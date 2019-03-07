package racetracker

class Race {

	String name
	String raceCode
	Date startDate
	String city
	String state
	BigDecimal distance
	BigDecimal cost
	Integer maxRunners
	Date createdDate = new Date()
	
	static constraints = {
		raceCode(blank:false,maxSize:20,unique:true)
		state(inList:["GA", "NC", "SC", "VA"])
	}
	
	static mapping = {
		id generator: 'sequence', params:[sequence:'race_id_seq']
		  version false
	  }
	
	
}
