package racetracker
import org.junit.internal.runners.statements.FailOnTimeout;
import org.springframework.web.multipart.commons.CommonsMultipartFile
class ImageController {

    def upload() { 
		println "in upload" 
		 
	}
	def save() {
		println "params has :" +params
		
		Image image=new Image()
		image.name=params.name
		image.imgSize=params.imageData.size
		image.imageData=params.imageData.bytes
		image.type = params.imageData.contentType
		//"image has :"+image.name + 
		
		println "image validation :"+		image.validate()
		 image.save(flush:true)
	}
	def display(){
		def sponsor = Image.get(params.id)
		response.contentType = "image/jpg"
		response.contentLength = sponsor.imgSize
		response.outputStream.write(sponsor.imageData)
		response.outputStream.flush()
		
	}
}
