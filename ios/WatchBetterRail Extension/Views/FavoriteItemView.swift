import SwiftUI

struct FavoriteItemView: View {
  var origin: Station
  var destination: Station
  
    var body: some View {
      GeometryReader { metrics in
        HStack() {
          Text(origin.hebrew).multilineTextAlignment(.center).frame(width: metrics.size.width * 0.4, alignment: .center)
          Spacer()
          Image(systemName: "arrow.left")
            
          Spacer()
          Text(destination.hebrew).multilineTextAlignment(.center).frame(width: metrics.size.width * 0.4, alignment: .center)
        }
      }.frame(height: 40)

    }
}

struct FavoriteItemView_Previews: PreviewProvider {
    static var previews: some View {
      FavoriteItemView()
    }
}
