import SwiftUI

struct FavoriteItemView: View {
  var origin: Station
  var destination: Station
  
    var body: some View {
      GeometryReader { metrics in
        ZStack(alignment: .leading) {
          Rectangle()
              .foregroundColor(.clear)
            .background(LinearGradient(gradient: Gradient(colors: [.clear, .black]), startPoint: .top, endPoint: .bottom))
          
                      
            VStack(alignment: .leading) {
              Spacer()
              Text(origin.name).font(Font.custom("Heebo", size: 16)).fontWeight(.black).padding(.bottom, -6)
              
              HStack(alignment: .center) {
                Image(systemName: "arrow.left.circle.fill").font(.system(size: 12))
                Text(destination.name).font(Font.custom("Heebo", size: 12))
              }
            }.padding(.bottom, 8).padding(.leading, 10)
          
          
//
//          Spacer()
//          Image(systemName: "arrow.left")
//          Spacer()
//
//          Text(destination.name).multilineTextAlignment(.center).frame(width: metrics.size.width * 0.4, alignment: .center)
        }
      }
      .frame(idealHeight: 120).background(Image("tlv-hashalom").resizable())
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
