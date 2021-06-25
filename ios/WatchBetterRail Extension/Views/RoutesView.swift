import SwiftUI


struct RoutesView: View {
  @ObservedObject var route: RouteViewModel
  
    var body: some View {
      VStack {
        HStack {
          Text("יציאה")
            .foregroundColor(Color.gray)
          Spacer()
          Text("הגעה")
            .foregroundColor(Color.gray)
        }.font(Font.custom("Heebo", size: 16))
        
          List (0 ..< route.routes.count) { index in
              HStack {
                Text(formatRouteHour(route.routes[index].Train[0].DepartureTime))
                Spacer()
                Image(systemName: "arrow.left")
                Spacer()
                Text(formatRouteHour(route.routes[index].Train[route.routes[index].Train.count - 1].ArrivalTime))
              }
          }.listStyle(CarouselListStyle()).environment(\.defaultMinListRowHeight, 50)
      }
    }
  
  func formatRouteHour(_ dateString: String) -> String {
    
    let formatter = DateFormatter()
    formatter.dateFormat = "dd/MM/yyyy HH:mm:ss"
    formatter.timeZone = TimeZone(abbreviation: "UTC")

    let hourFormatter = DateFormatter()
    hourFormatter.dateFormat = "HH:mm"
    hourFormatter.timeZone = TimeZone(abbreviation: "UTC")
    
    let formattedDate = formatter.date(from: dateString)
    if let date = formattedDate {
      return hourFormatter.string(from: date)
    } else {
      return "--:--"
    }

  }
}

struct RoutesView_Previews: PreviewProvider {
    static var previews: some View {
      RoutesView(route: RouteViewModel(origin: Station(id: "3600", name: "תל אביב השלום"), destination: Station(id: "3400", name: "ירושלים יצחק נבון" )))
    }
}
