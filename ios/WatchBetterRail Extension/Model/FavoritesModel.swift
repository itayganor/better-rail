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

class FavoritesModel: NSObject,  WCSessionDelegate, ObservableObject {
  
  func session(_ session: WCSession, activationDidCompleteWith activationState: WCSessionActivationState, error: Error?) {
    print("Did activate")
  }
  
  func session(_ session: WCSession, didReceiveApplicationContext applicationContext: [String: Any]) {
    print("did receive application context", applicationContext)
  }
  
}
