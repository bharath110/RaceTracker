package racetracker

import groovy.sql.Sql

import java.math.BigDecimal;
import java.text.SimpleDateFormat
import java.util.Date;

import oracle.jdbc.driver.OracleTypes
class DataService {
	def dataSource
	/**
	 * 
	 * @param params are the parameters from GSP
	 * @param flash is used for giving error messages 
	 * @return
	 */
	def registerRunner(params,flash){
		Date d=new Date()
		Runner addRunner1=new Runner(params)
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
		def date = sdf.parse(params.dateOfBirth)
		params.dateOfBirth = date
		Runner addRunner=new Runner(params)
		if (!addRunner.save (flush:true)) {
			addRunner.errors.allErrors.each { log.info( it )}
			return false
		}
		else{
			def runner=Runner.get(addRunner.id)
			log.info( "Printing  runner on assign :"+runner)
			return true
		}
	}
	/**
	 *
	 * @param params are the parameters from GSP
	 * @param flash is used for giving error messages
	 * @return
	 */
	def createRace(params,flash) {

		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
		log.info( "params :"+ params )
		def date = sdf.parse(params.startDate)
		params.startDate = date
		Race addRace = new Race(params)
		if (!addRace.save(flush:true)) {
			addRace.errors.allErrors.each { log.info( it ) }
			return false
		}
		else{
			def race=Race.get(addRace.id)
			log.info( "Printing   :"+ race.list() )
			return true
		}

	}
	/**
	 *
	 * @param params are the parameters from GSP
	 * @param flash is used for giving error messages
	 * @return
	 */
	def updateRace(params,flash) {
		log.info("enter into updateRace() Method with params"+ params)
		Race race=Race.get(params.id)


		log.info("(params.startDate:"+params.startDate)
		Date date1 = new Date().parse("yyyy-MM-dd", params.startDate)
		log.info( "date :-- "+date1)
		params.startDate=date1
		log.info(date1)
		race.properties = params
		if (!race.save (flush:true)) {
			race.errors.allErrors.each { log.info( it )}
			return false
		}else{
			return true
		}
	}
	/**
	 *
	 * @param params are the parameters from GSP
	 * @param flash is used for giving error messages
	 * @return
	 */
	def delete(params,flash) {
		Race getRace=Race.get(params.id)
		Race retRace=getRace
		def hasRunners=Registration.findByRace(retRace)
		if(!hasRunners)
		{
			def raceDeleted=getRace.delete (flush:true)
			getRace.errors.allErrors.each { log.info( it ) }
			log.info( "deleted---" +raceDeleted)
			if (raceDeleted) {
				log.info( "deleted---" +raceDeleted)
				flash.raceDeleteError="Race : "+retRace.name+" is  deleted"
				return true
			}
		}
		else{
			flash.raceDeleteError="Race cannot be deleted due to runners Registered for this Race"
			return false
		}

	}
	/**
	 *
	 * @param params are the parameters from GSP
	 * @param flash is used for giving error messages
	 * @return
	 */
	def showRunnerForSelectRace(raceid) {

		List<Runner> runnerList = new ArrayList<Runner>();
		Race selectRace=Race.get(raceid)
		Registration.findAllByRace(selectRace).each {
		
		runnerList.push(it.runner)
		log.info(" it.runner has: "+it.runner)
		}
		return runnerList
	}
	/**
	 *
	 * @param params are the parameters from GSP
	 * @param flash is used for giving error messages
	 * @return
	 */
	def registerForRace(session,params,flash) {
		def alreadyRegistred;
		
		Race race = Race.get(params.raceid)
		Runner runner = Runner.findByEmail(session.currentRunner.email)
		alreadyRegistred=Registration.findAllByRaceAndRunner(race, runner)
		
		if(!alreadyRegistred.empty)
		{
			flash.errorMsg =session.currentRunner.firstName+", you are already registerd for the Race : " + race.name
			return false
		}
		else {
			Registration registration = new Registration();
			registration.race= race
			registration.runner= runner
			if(!registration.save(flush:true,failOnErro:true)){
				reg.errors.allErrors.each { log.info( it )}
			}
			flash.successMsg =session.currentRunner.firstName+",Thanks for registering to  " + race.name
			return true
		}
	}
	/**
	 *
	 * @param params are the parameters from GSP
	 * @param flash is used for giving error messages
	 * @return
	 */
	def updateRunner(params,flash,session) {

		
		SimpleDateFormat sdf = new SimpleDateFormat("yyyy-mm-dd");
		def date = sdf.parse(params.dateOfBirth)
		params.dateOfBirth = date
		params.email=session.currentRunner.email
		params.password=session.currentRunner.password
		Runner runner=Runner.get(params.id)
		runner.properties = params
		if (!runner.save (flush:true)) {
			runner.errors.allErrors.each { log.info( it )}
			return false
		}else{
			session.currentRunner = runner
			flash.successUpdateMsg=" Your Profile Updated successfully"
			return runner
		}
	}
	/**
	 *
	 * @param params are the parameters from GSP
	 * @param flash is used for giving error messages
	 * @return
	 */
	def deleteRunner(params) {
		log.info("In service -delete ")
		log.info( "params Email:"+params.email)
		log.info( "params :"+params)
		Runner getRunner=Runner.findById(params.id)
		log.info( "getRunner has --"+getRunner )
		if (!getRunner.delete (flush:true)) {
			getRunner.errors.allErrors.each { log.info( it )}
			log.info( "deleting prob ---" )
			[data:false]
		}
		else{
			[data:true]
		}
	}
	/**
	 *
	 * @param params are the parameters from GSP
	 * @param flash is used for giving error messages
	 * @return
	 */
	def getRaceList(){
		List<Race> raceList = new ArrayList<Race>();

		Sql sql = new Sql(dataSource)
		try {
			def procedurename ='{call GETRACELIST(?)}'
			log.info( " in try" )
			sql.call procedurename ,[Sql.out(OracleTypes.CURSOR)],  { row ->
				log.info( "in sql call" )
				row.eachRow() {
					log.info( "Date :" + it.START_DATE )
					def race=new Race()
					race.id=it.ID
					race.name=it.NAME
					race.raceCode=it.RACE_CODE
					SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd");
					def date = sdf.parse(it.START_DATE)
					race.startDate=date
					log.info( "Date on sdf:" +"from  "+(it.START_DATE )+"  to "+date +"  race.startDate :"+race.startDate )
					race.city=it.CITY
					race.state=it.STATE
					race.distance=it.DISTANCE
					race.maxRunners=it.MAX_RUNNERS
					race.cost=it.COST
					log.info( "email "+ it )
					raceList.add(race)
				}
			}
			sql.close()
			log.info( "out.. closed.. " )
			log.info( "list "+ raceList )
		} catch (Exception e) {
			log.info( "Could not execute  "+"\nE--: "+e )
		}
		raceList.each {
			log.info( "rows :"+it)
		}
		return raceList
	}
	def deleteRunners(params,flash){
		log.info("params "+params)
		def regList=Registration.findByRaceAndRunner(Race.get(params.raceID),Runner.get(params.runnerID))
		regList.each {
		
		
		if(!it.delete(flush:true))	{
			it.errors.allErrors.each {
				log.info(" error on registration delete :"+it)
			}
			flash.runnerDeleteError="Can't delete runners"
			return false
		}
		else{
			flash.runnerDeleteError="Runners deleted"
			return true
		}
		
		}
		

	}
	def deleteRunner(params,flash){
		log.info("params "+params)
		def deleteReg=Registration.findByRaceAndRunner(Race.get(params.raceID),Runner.get(params.runnerID))
		if(!deleteReg.delete(flush:true))	{
			deleteReg.errors.allErrors.each {
				log.info(" error on registration delete :"+it)
			}
			flash.runnerDeleteError="Can't delete runner"
			return false
		}
		else{
			flash.runnerDeleteError="Runner deleted"
			return true
		}
	}
}