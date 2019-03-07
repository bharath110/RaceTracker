package racetracker

class Runner {
	
	String firstName
	String lastName
	Date dateOfBirth
	String gender
	String address
	String city
	String state
	String zipcode
	String email
	String password

	static constraints = {
		gender(inList:["M", "F"],blank:true)
		email(email:true,unique:true,blank:false)
		
	}
	
	static mapping = {
		id generator: 'sequence', params:[sequence:'runner_id_seq']
		  version false
	  }
	
  
}