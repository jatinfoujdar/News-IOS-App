import SwiftUI


struct NavbarView: View {
    
var body: some View {
    HStack{
        Spacer()
        Image(systemName: "homekit")
            .resizable()
            .scaledToFit()
            .frame(width: 35, height: 50)
        Spacer()
        Image(systemName: "safari")
            .resizable()
            .scaledToFit()
            .frame(width: 35, height: 50)
        Spacer()
        Image(systemName: "bookmark")
            .resizable()
            .scaledToFit()
            .frame(width: 25, height: 30)
        Spacer()
        Image(systemName: "person")
            .resizable()
            .scaledToFit()
            .frame(width: 30, height: 50)
        Spacer()
      }
    .padding()
    }
}

#Preview {
    NavbarView()
}
