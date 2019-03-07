package racetracker

import java.sql.Blob

class Image {
	byte[] imageData
	String name 
	String type
	int imgSize 
    static constraints = {
		imageData(nullable:false)
		name(nullable:false)
		type(nullable:false)
		}
	static mapping = {
		id generator: 'sequence', params:[sequence:'race_id_seq']
		  version false
	  }
}
