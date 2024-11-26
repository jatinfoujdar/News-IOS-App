import SwiftUI

struct LandingPageView: View {
    @State private var currentIndex = 0
    let images = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
    var body: some View {
        ZStack {
           
            ForEach(images.indices, id: \.self) { index in
                Image(images[index])
                    .resizable()
                    .scaledToFit()
                    .cornerRadius(10)
                    .frame(width: 150, height: 150)
                    .position(x: CGFloat(index) * 160 + 80, y: 300)
            }
            
         
            Image(images[currentIndex])
                .resizable()
                .scaledToFit()
                .cornerRadius(10)
                .frame(width: 200, height: 200)
                .scaleEffect(1.2)
                .shadow(radius: 10)
                .onTapGesture {
                    currentIndex = (currentIndex + 1) % images.count
                }
            
         
            VStack {
                Text("Explore Your News Flasher")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .foregroundColor(.green)
                    .padding(.top, 40)
                Spacer()
            }
            .padding(.horizontal)
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color.black)
    }
}

#Preview {
    LandingPageView()
}
