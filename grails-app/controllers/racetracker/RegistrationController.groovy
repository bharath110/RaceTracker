package racetracker

import java.awt.List;
import java.util.ArrayList.ListItr;

/**
 *
 * @author Bharath Kumar
 *
 */
class RegistrationController {
	def dataService
	/**
	 * action to render associate race with the selected runner/user 
	 * returns entire Race table as list object
	 **/
	def registerForRace() {

		dataService.registerForRace(session,params,flash)
		redirect (action:'refreshRaceList')
	}
	/**
	 * returns entire Race table as list object
	 **/
	def displayRegisterdRaceRunner()
	{
		[registered:registered]
	}

	def refreshRaceList(){
		render (view:"/allViews/dashBoard",model:[raceList:Race.list()])
	}
	def deleteRunners(){
		log.info("enter into deleteRunners Method")
		log.info("params "+params)
		dataService.deleteRunners(params,flash)
		redirect(controller: 'race', action:'adminDashboard')
	}
	def deleteRunner(){
		log.info("enter into deleteRunner Method")
		log.info("params "+params)
		dataService.deleteRunner(params,flash)
		redirect(controller: 'race', action:'adminDashboard')
	}
}
