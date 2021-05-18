import SwiftUI

@main
struct BetterRailApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
              FavoritesView().environmentObject(Favorites())
            }
        }
    }
}
