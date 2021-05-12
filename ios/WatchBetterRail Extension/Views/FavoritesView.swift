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
          GeometryReader { metrics in
            HStack() {
              Text("ת״א - מרכז").multilineTextAlignment(.center).frame(width: metrics.size.width * 0.4, alignment: .center)
              Spacer()
              Image(systemName: "arrow.left")
                
              Spacer()
              Text("אשדוד - עד הלום").multilineTextAlignment(.center).frame(width: metrics.size.width * 0.4, alignment: .center)
            }
          }.frame(height: 40)
        }
        NavigationLink(destination: RoutesView()) {
          GeometryReader { metrics in
            HStack() {
              Text("אשקלון").frame(width: metrics.size.width * 0.4, alignment: .center)
              Spacer()
              Image(systemName: "arrow.left")
              Spacer()
              Text("חוף הכרמל").multilineTextAlignment(.center).frame(width: metrics.size.width * 0.4, alignment: .center)
            }
          }.frame(height: 40)
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
