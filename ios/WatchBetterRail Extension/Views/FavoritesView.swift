import SwiftUI

struct FavoritesView: View {
  @ObservedObject var favorites: FavoritesViewModel
  
    var body: some View {
      VStack {
        List {
          ForEach (0 ..< favorites.routes.count) { index in
            let origin = favorites.routes[index].origin
            let destination = favorites.routes[index].destination
            NavigationLink(destination: RoutesView(route: RouteViewModel(origin: origin, destination: destination))) {
              FavoriteItemView(origin: origin, destination: destination)
            }.listRowBackground(ZStack {
              Image("tlv-hashalom").resizable()
              Rectangle().foregroundColor(Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.45))
            }.cornerRadius(5))
          }
        }
        .listStyle(CarouselListStyle())
      }.navigationTitle("מועדפים")
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
      NavigationView {
        FavoritesView(favorites: FavoritesViewModel())
      }
    }
}
