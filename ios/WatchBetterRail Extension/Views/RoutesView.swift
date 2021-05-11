import SwiftUI

struct RoutesView: View {
    var body: some View {
      VStack {
        HStack {
          Text("יציאה")
            .foregroundColor(Color.gray)
          Spacer()
          Text("הגעה")
            .foregroundColor(Color.gray)
        }
        ScrollView {
          Button {} label: {
            HStack {
              Text("08:23")
              Spacer()
              Image(systemName: "arrow.left")
              Spacer()
              Text("09:32")
            }
          }
          Button {} label: {
            HStack {
              Text("08:23")
              Spacer()
              Image(systemName: "arrow.left")
              Spacer()
              Text("09:32")
            }
          }
          Button {} label: {
            HStack {
              Text("08:23")
              Spacer()
              Image(systemName: "arrow.left")
              Spacer()
              Text("09:32")
            }
          }
          Button {} label: {
            HStack {
              Text("08:23")
              Spacer()
              Image(systemName: "arrow.left")
              Spacer()
              Text("09:32")
            }
          }
          Button {} label: {
            HStack {
              Text("08:23")
              Spacer()
              Image(systemName: "arrow.left")
              Spacer()
              Text("09:32")
            }
          }
          Button {} label: {
            HStack {
              Text("08:23")
              Spacer()
              Image(systemName: "arrow.left")
              Spacer()
              Text("09:32")
            }
          }
          Button {} label: {
            HStack {
              Text("08:23")
              Spacer()
              Image(systemName: "arrow.left")
              Spacer()
              Text("09:32")
            }
          }
        }
              }.navigationTitle("בדיקה")
    }
}

struct RoutesView_Previews: PreviewProvider {
    static var previews: some View {
        RoutesView()
    }
}
