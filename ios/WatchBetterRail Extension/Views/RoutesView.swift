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
        }
        ScrollView {
          Button {} label: {
            HStack {
              Text("08:23")
              Spacer()
              Image(systemName: "arrow.left")
              Spacer()
              Text("09:32")
            }
          }
        }
      }
    }
}

struct RoutesView_Previews: PreviewProvider {
    static var previews: some View {
      RoutesView(route: RouteViewModel(origin: Station(id: "3600", name: "תל אביב השלום"), destination: Station(id: "3400", name: "ירושלים יצחק נבון" )))
    }
}
