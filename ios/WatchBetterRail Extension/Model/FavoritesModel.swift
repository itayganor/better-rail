import Foundation
import WatchConnectivity

struct AppContextData: Codable {
  let favorites: [FavoriteRawData]
}

struct FavoriteRawData: Codable {
  let originId: String
  let destinationId: String
}

struct Favorite {
  let origin: Station
  let destination: Station
}


let fav = Favorite(origin: Station(id: "3500", name: "תל אביב השלום"), destination: Station(id: "3400", name: "באר שבע"))

class FavoritesController: NSObject, WCSessionDelegate, ObservableObject {
  var routes: [Favorite] = []
  var session: WCSession
  
  init(session: WCSession = .default){
    print("Hello session!")
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
    print("did receive application context", applicationContext)
    
    if (applicationContext["favorites"] != nil) {
      if let favoritesDict = applicationContext["favorites"] as? NSArray {
        for favorite in favoritesDict {
          
          if let route = favorite as FavoriteRawData {
            var originInfo: Station?
            var destinationInfo: Station?
            
            for station in stations {
              
              if station.id == route.originId {
                originInfo = Station(id: station.id, name: station.hebrew)
              }
              
              if station.id == route.destinationId {
                destinationInfo = Station(id: station.id, name: station.hebrew)
                }
            }
            
            if originInfo != nil && destinationInfo != nil {
              routes.append(Favorite(origin: originInfo!, destination: destinationInfo!))
            }
          }
          
        }
      } else {
        print("Whoops!")
      }
    }
  }
}
