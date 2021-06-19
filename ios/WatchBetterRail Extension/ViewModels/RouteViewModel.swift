import Foundation

class RouteViewModel: ObservableObject {
  let origin: Station
  let destination: Station
  let route: RouteResult? = nil
  
  init(origin: Station, destination: Station) {
    self.origin = origin
    self.destination = destination
    
    RouteModel().fetchRoute(originId: origin.id, destinationId: destination.id, completion: { result in print(result)})
  }

}
