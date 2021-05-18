import Foundation
import WatchConnectivity

struct Favorite {
  let origin: Station
  let destination: Station
}

let fav = Favorite(origin: stations[0], destination: stations[1])
let fav2 = Favorite(origin: stations[4], destination: stations[3])

class Favorites: ObservableObject {
  @Published var stations: [Favorite] = [fav, fav2]
}

class FavoritesController: NSObject, WCSessionDelegate, ObservableObject {
  var session: WCSession
  
  init(session: WCSession = .default){
      self.session = session
      super.init()
      self.session.delegate = self
      session.activate()
    
    print(session.activationState == WCSessionActivationState.activated)
    
  }
  
  func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
    print("Did activate")
    
    do {
        try session.updateApplicationContext(["name": "Guy"])
         print("updated the application context")
     } catch {
         print("Unexpected error when updating application context: \(error).")
     }

  }
  
  func session(_ session: WCSession, didReceiveApplicationContext applicationContext: [String: Any]) {
    print("did receive application context", applicationContext)
  }
}
