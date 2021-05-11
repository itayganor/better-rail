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
          Text("יצחק נבון")
          Spacer()
          Image(systemName: "arrow.left")
          Spacer()
          Text("השלום")
        }
        NavigationLink(destination: RoutesView()) {
          Text("אשקלון")
          Spacer()
          Image(systemName: "arrow.left")
          Spacer()
          Text("השלום")
        }
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
