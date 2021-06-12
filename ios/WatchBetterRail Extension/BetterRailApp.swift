import SwiftUI

@main
struct BetterRailApp: App {
    let favorites = FavoritesController()
  
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
              FavoritesView(favorites: favorites)
            }
        }
    }
}
