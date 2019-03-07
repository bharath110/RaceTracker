

class SecurityFilters {
	def request
	def session
	def filters = {
		loginCheck(controller:'race', action:'*') {
			before = {

				/*if( !session.currentRunner && !actionName.equals('login')) {
					if(actionName.equals('goToLogin')){
						log.info(" in ")
						session.currentRunner=null
						flash.errorSessionOut=" "
						render (view:"/allViews/login")
					}
					else{
						flash.errorSessionOut=" session expired or server needs login credentials "
						render (view:"/allViews/login")
						return false
					}
				}
*/
			}
		}
	}


}

