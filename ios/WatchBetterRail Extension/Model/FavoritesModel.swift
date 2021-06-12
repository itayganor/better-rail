import Foundation
import WatchConnectivity

struct FavoriteRawData {
  let originId: String
  let destinationId: String
}

struct Favorite {
  let origin: Station
  let destination: Station
}


let fav = Favorite(origin: Station(id: "3500", name: "תל אביב השלום"), destination: Station(id: "3400", name: "באר שבע"))
//let fav2 = Favorite(origin: "3500", destinationId: "2300")

class FavoritesController: NSObject, WCSessionDelegate, ObservableObject {
  var stations: [Favorite] = [fav]
  var session: WCSession
  
  init(session: WCSession = .default){
      self.session = session
      super.init()
      self.session.delegate = self
      session.activate()
    
    print("Activated: ", session.activationState == WCSessionActivationState.activated)
    
  }
  
  func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
    print("Did activate")
  }
  
  func session(_ session: WCSession, didReceiveApplicationContext applicationContext: [String: Any]) {
    print("did receive application context", applicationContext["favorites"])
    if let favoritesData: Array<FavoriteRawData> = applicationContext["favorites"] as? Array<FavoriteRawData> {
      print(favoritesData)
    } else {
      print("W00T")
    }
  }
}
