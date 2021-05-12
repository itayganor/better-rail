//
//  FavoritesView.swift
//  BetterRail
//
//  Created by Guy Tepper on 11/05/2021.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
      VStack {
        NavigationLink(destination: RoutesView()) {
          FavoriteItemView(origin: stations[0], destination: stations[1])
        }
        NavigationLink(destination: RoutesView()) {
          FavoriteItemView(origin: stations[2], destination: stations[3])
        }
        Spacer()
      }.navigationTitle("מועדפים")
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
      NavigationView {
        FavoritesView()
      }
    }
}
