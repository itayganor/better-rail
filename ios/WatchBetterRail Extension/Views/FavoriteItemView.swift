import SwiftUI

struct FavoriteItemView: View {
  var origin: Station
  var destination: Station
  
    var body: some View {
      GeometryReader { metrics in
        HStack {
          Text(origin.name).multilineTextAlignment(.center).frame(width: metrics.size.width * 0.4, alignment: .center)
          
          Spacer()          
          Image(systemName: "arrow.left")
          Spacer()
          
          Text(destination.name).multilineTextAlignment(.center).frame(width: metrics.size.width * 0.4, alignment: .center)
        }.position(x: metrics.size.width / 2, y: metrics.size.height / 2.1)
      }.frame(height: 40, alignment: .center).font(.caption2)
    }
}

struct FavoriteItemView_Previews: PreviewProvider {
    static var previews: some View {
      VStack {
//        FavoriteItemView(origin: stations[0], destination: stations[3])
//        FavoriteItemView(origin: stations[1], destination: stations[3])
        
      }
      
    }
}
