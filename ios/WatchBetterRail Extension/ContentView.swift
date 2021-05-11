//
//  ContentView.swift
//  WatchBetterRail Extension
//
//  Created by Guy Tepper on 11/05/2021.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
      NavigationView {
        NavigationLink(destination: FavoritesView()) {
            Text("מועדפים")
        }
      }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
