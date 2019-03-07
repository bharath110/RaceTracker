package racetracker
import grails.converters.JSON
import groovy.sql.Sql
import java.text.SimpleDateFormat
import oracle.jdbc.driver.OracleTypes
/**
 * 
 * @author Bharath Kumar
 *
 */
class RaceController {

	def dataService
	/**
	 * action to render login page to the new user
	 * @return view
	 */
	def goToLogin() {
		if(session.currentRunner)
		{
		 session.currentRunner=null
		 log.info("session.invalidated")
		}
		log.info("enter into goToLogin Method")
		render (view:"/allViews/login")
	}

	/**
	 * action to render user Dashboard page to the new user
	 * @return view
	 */
	def userDashboard() {
		log.info("enter into userDashboard() Method")
		render (view:"/allViews/dashBoard",model:[raceList:Race.list()] )
	}

	/**
	 * action to render Admin Dashboard page to the new user
	 * @return view
	 */
	def adminDashboard() {
		log.info("enter into adminDashboard() Method")
		render (view:"/allViews/adminDashboard",model:[raceList:Race.list()])
	}

	/**
	 * action to validate the user and render the respective Dash board pages depending on the role of user
	 * @return view
	 */
	def login(){
		log.info("enter into login() Method")
		if(params.role.equals("user") && !params.userId.equals("admin123")){
			Runner loggeduser=Runner.findByEmail(params.userId)
			if(loggeduser){

				if(loggeduser.password.equals(params.password)){
					session.currentRunner = loggeduser
					redirect action:"userDashboard"
				}
			}
			else{
				flash.message="Login Failed,reason may be one of these  1.user name or password 2.user role mismatch"
				redirect action:"goToLogin"
			}
		}
		else if(params.role.equals("admin")&&params.userId.equals("admin123")){
			Runner loggeduser=Runner.findByEmail(params.userId)
			if(loggeduser){

				if(loggeduser.password.equals(params.password)){
					session.currentRunner = loggeduser
					redirect action:"adminDashboard"
				}

			}
			else{
				flash.message="Login Failed,reason may be one of these  1.user name or password 2.user role mismatch"
				redirect action:"goToLogin"
			}


		}
		else{
			flash.message="Login Failed"
			redirect action:"goToLogin"
		}

	}
	/**
	 * action to register the new user details into Runner table
	 * @return view of login page
	 */
	def register() {
		log.info("enter into register() Method with params"+ params)


		if (dataService.registerRunner(params,flash)) {
			flash.registerSuccesMsg="Registration successful Please Login with ur E-mail "
			render (view:"/allViews/login")
		}
		else{
			flash.registerError="Some error occurred due to wrong credentials while Registering "
			render (view:"/allViews/login")
		}
	}

	/**
	 * action to add the new race details into Race table
	 * redirects to ListRace action on positive scenario
	 **/

	def createRace() {
		log.info("enter into createRace() Method with params"+ params)
		if (!dataService.createRace(params,flash)) {
			flash.raceCreateError="unable create Race Please try again"
			redirect action:"adminDashboard"
		}
		else{
			flash.raceCreateSuccess="Race Create "
			redirect action:"adminDashboard"
		}
	}

	/**
	 * action to return a race details for editing  on getting the particular id of that race
	 * renders Race object as JSON
	 **/
	def edit() {
		log.info("enter into edit() Method with params"+ params)
		render  Race.get(params.id) as JSON
	}

	/**
	 * action to update a race details for on editing  
	 * renders error message for any negative scenario else returns the updated details of the race 
	 **/
	def updateRace() {
		log.info("enter into updateRace() Method with params"+ params)

		if (dataService.updateRace(params,flash)) {
			flash.raceEditError="unable Edit Race Please try again"
			[race:Race.get(params.id)]
		}else{
				[race:Race.get(params.id)]
		}
	}

	/**
	 * action to delete a race details from Race table
	 * returns boolean value 
	 **/
	def delete() {
		log.info("enter into delete() Method with params"+ params)
		dataService.delete(params,flash)
		redirect action:"adminDashboard"
	}
	
	/**
	 * action to render Race table details as List 
	 **/
	def ListRace(){
		log.info("enter into ListRace() Method ")
		Race addRace=new Race()
		render view:"/race/ListRace",model:[raceList:Race.list()]
	}

	/**
	 * action to call stored procedures to check the races with maximum runners as parameters to the procedures  
	 * prints the races which have maximum runners as passed parameter  
	 **/
	def showRunnerForSelectRace() {
		println "in serviceMethod params "+ params
		def runnerList = dataService.showRunnerForSelectRace(params.raceid)
		[registeredRunners:runnerList,selectedRace:Race.get(params.raceid)]
	}

	/**
	 * action to render Race table details as list on admindashboard page
	 * returns entire Race table as list object
	 **/

	def showListRace(){
		render (view:"/allViews/adminDashboard",model:[raceList:Race.list()])
	}

	/**
	 * action to render selected Race  details on user dashboard
	 * returns selected Race object 
	 **/

	def selectedRace() {

		Race selectRace=Race.get(params.id)
		println "finding Selected---"+	selectRace
		[selectedRace:selectRace]

	}
	def logout(){
		session.currentRunner = null
		flash.logoutMsg=" Your session has been logged out Successfully"
		redirect action:"goToLogin"
	}
	def registerForRace() {
		def alreadyRegistred=false;

		Race race = Race.get(10)
		Runner runner = Runner.findByEmail(session.currentRunner.email)
		ArrayList<Registration> reg=new ArrayList<Registration>()
		reg=Registration.findAllByRace(race)
		reg.each {
			item ->
			if(item.runner.email.equals(session.currentRunner.email))
				alreadyRegistred=true
		}

		if(alreadyRegistred)
		{
			flash.errorMsg =session.currentRunner.firstName+", you are already registerd for the Race : " + race.name
			return alreadyRegistred
		}
		else {

			Registration registration = new Registration();
			registration.race= race
			registration.runner= runner

			if(!registration.save(flush:true,failOnErro:true)){
				reg.errors.allErrors.each { println it }
			}
			flash.successMsg =session.currentRunner.firstName+",Thanks for registering to  " + race.name
			return alreadyRegistred

		}

	}
	/**
	 * 
	 * @return Race table as list of a objects 
	 */
	def getRace(){
		dataService.getRaceList()
	}

	def testTab() {
		dataService.getRaceList()

	}
	def jsonTab() {
		def allData=Race.list()
		println "+++++++++++++"+(allData  as JSON)
		//render (view:"/race/jsonTab",model:[raceList:(allData  as JSON)])
		[raceList:allData] 

	}
}