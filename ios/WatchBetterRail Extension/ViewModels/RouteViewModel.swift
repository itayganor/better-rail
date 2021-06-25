import Foundation

class RouteViewModel: ObservableObject {
  let origin: Station
  let destination: Station
  var routes: Array<Route> = []
  
  init(origin: Station, destination: Station) {
    self.origin = origin
    self.destination = destination
    
    RouteModel().fetchRoute(originId: origin.id, destinationId: destination.id, completion: { result in self.routes = result.Data.Routes})
  }

}
