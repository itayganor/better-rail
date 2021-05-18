import SwiftUI

struct FavoritesView: View {
  @EnvironmentObject var favorites: Favorites
  
    var body: some View {
      VStack {
        ForEach(0 ..< favorites.stations.count) { index in
          NavigationLink(destination: RoutesView()) {
            FavoriteItemView(origin: favorites.stations[index].origin, destination: favorites.stations[index].destination)
          }
        }
        
        Spacer()
      }.navigationTitle("מועדפים")
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
      NavigationView {
        FavoritesView().environmentObject(Favorites())
      }
    }
}
