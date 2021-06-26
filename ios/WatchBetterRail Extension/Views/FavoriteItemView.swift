import SwiftUI

struct FavoriteItemView: View {
  var origin: Station
  var destination: Station
  
    var body: some View {
      GeometryReader { metrics in
        ZStack(alignment: .leading) {
          Rectangle().foregroundColor(Color(.sRGB, red: 0, green: 0, blue: 0, opacity: 0.5))
          
                      
            VStack(alignment: .leading) {
              Spacer()
              Text(origin.name).font(Font.custom("Heebo", size: 16)).fontWeight(.black).padding(.bottom, -6)
              
              HStack(alignment: .center) {
                Image(systemName: "arrow.left.circle.fill").font(.system(size: 12))
                Text(destination.name).font(Font.custom("Heebo", size: 12))
              }
            }.padding(.bottom, 6).padding(.leading, 8).shadow(radius: 5)
          
          
//
//          Spacer()
//          Image(systemName: "arrow.left")
//          Spacer()
//
//          Text(destination.name).multilineTextAlignment(.center).frame(width: metrics.size.width * 0.4, alignment: .center)
        }
      }.background(Image("tlv-hashalom").resizable())
      .frame(idealHeight: 80)
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
