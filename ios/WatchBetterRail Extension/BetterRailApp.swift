//
//  BetterRailApp.swift
//  WatchBetterRail Extension
//
//  Created by Guy Tepper on 11/05/2021.
//

import SwiftUI

@main
struct BetterRailApp: App {
    @SceneBuilder var body: some Scene {
        WindowGroup {
            NavigationView {
              FavoritesView().environmentObject(FavoritesModel())
            }
        }
    }
}
