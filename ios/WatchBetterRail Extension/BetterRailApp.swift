import SwiftUI

@main
struct BetterRailApp: App {
    let favorites = FavoritesViewModel()
  
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
              FavoritesView(favorites: favorites)
            }
        }
    }
}
