//
//  FavoritesView.swift
//  BetterRail
//
//  Created by Guy Tepper on 11/05/2021.
//

import SwiftUI

struct FavoritesView: View {
    var body: some View {
      NavigationView {
        NavigationLink(destination: FavoritesView()) {
          Text("יצחק נבון \(Image(systemName: "square.and.pencil")) אשקלון")
        }
      }
    }
}

struct FavoritesView_Previews: PreviewProvider {
    static var previews: some View {
      FavoritesView()
        .preferredColorScheme(.dark)
    }
}
