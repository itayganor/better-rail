import SwiftUI

struct FavoritesView: View {
  @ObservedObject var favorites: FavoritesViewModel
  
    var body: some View {
      VStack {
        List(0 ..< favorites.routes.count) { index in
          let origin = favorites.routes[index].origin
          let destination = favorites.routes[index].destination
          NavigationLink(destination: RoutesView(route: RouteViewModel(origin: origin, destination: destination))) {
            FavoriteItemView(origin: origin, destination: destination)
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
