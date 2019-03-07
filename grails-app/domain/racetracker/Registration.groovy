package racetracker

class Registration {
	
	Boolean paid = true
	Date createdDate = new Date()
	Race race
	Runner runner

	static mapping = {
		id generator: 'sequence', params:[sequence:'registration_id_seq']
		  version false
	  }
	
}
