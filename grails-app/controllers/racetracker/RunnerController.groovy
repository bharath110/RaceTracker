package racetracker

import java.text.SimpleDateFormat;
import grails.converters.*

/**
 *
 * @author Bharath Kumar
 *
 */
class RunnerController {
	def dataService
	/**
	 * action to return a runner details for editing  on getting the particular id of that runner
	 * renders view along with Runner object 
	 **/
	def edit() {
		println "params:"+params
		render Runner.get(params.id) as JSON
	}

	/**
	 * action to update a runner details for on editing
	 * renders error message for any negative scenario else returns the updated details of the runner
	 **/
	def update() {
		dataService.updateRunner(params,flash,session)
		redirect(controller: 'race', action:'userDashboard')
	}

	/**
	 * action to delete a runner details from runner table
	 * returns boolean value
	
	def delete() {
		println"In delete*********"
		println "params Email:"+params.email
		println "params :"+params
		Runner getRunner=Runner.findById(params.id)
		println "getRunner has --"+getRunner
		if (!getRunner.delete (flush:true)) {
			getRunner.errors.allErrors.each { println it }
			println "deleting prob ---:"
			[data:false]
		}
		else{
			[data:true]
		}
	}
	 **/
	/**
	 * action to render Race table details as List
	 * returns entire Race table as list object
	 **/
	def ListRace(){
		Race addRace=new Race()


		[raceList:Race.list()]

	}

	/**
	 * action to render Runner table details as List
	 * returns entire Runner table as list object
	 **/
	def ListRunner(){
		Runner.getAll().each {
			println it
		}
		[runnerList:Runner.list()]

	}
}
