package racetracker



class MyCronJob {
    static triggers = {
      simple repeatInterval: 5000l // execute job once in 5 seconds
	  cron name: 'cronTrigger', cronExpression: "0 12 4 5 7 *"
    }

    def execute() {
        // execute job
    }
}
