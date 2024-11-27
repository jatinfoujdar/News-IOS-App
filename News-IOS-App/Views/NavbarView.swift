import SwiftUI


struct NavbarView: View {
    
var body: some View {
    HStack{
        Spacer()
        Image("home1")
            .resizable()
            .scaledToFit()
            .frame(width: 35, height: 50)
        Spacer()
        Image("explore2")
            .resizable()
            .scaledToFit()
            .frame(width: 35, height: 50)
        Spacer()
        Image("bookmark3")
            .resizable()
            .scaledToFit()
            .frame(width: 30, height: 50)
        Spacer()
        Image("user4")
            .resizable()
            .scaledToFit()
            .frame(width: 35, height: 50)
        Spacer()
      }
    .padding()
    }
}

#Preview {
    NavbarView()
}
