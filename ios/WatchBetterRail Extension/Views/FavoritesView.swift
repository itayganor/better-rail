import SwiftUI

struct FavoritesView: View {
  @ObservedObject var favorites: FavoritesController
  
    var body: some View {
      VStack {
        ForEach(0 ..< favorites.routes.count) { index in
          NavigationLink(destination: RoutesView()) {
            FavoriteItemView(origin: favorites.routes[index].origin, destination: favorites.routes[index].destination)
          }
        }
        
        Spacer()
      }.navigationTitle("מועדפים")
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
      NavigationView {
        FavoritesView(favorites: FavoritesController())
      }
    }
}
