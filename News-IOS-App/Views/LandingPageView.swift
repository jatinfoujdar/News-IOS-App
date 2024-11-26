import SwiftUI

struct LandingPageView: View {
    @State private var currentIndex = 0
    let images = ["image1", "image2", "image3", "image4", "image5"]
    
    var body: some View {
        VStack {
            // Carousel of images
            TabView(selection: $currentIndex) {
                ForEach(images.indices, id: \.self) { index in
                    Image(images[index])
                        .resizable()
                        .scaledToFit()
                        .cornerRadius(10)
                        .scaleEffect(index == currentIndex ? 1.2 : 0.8)
                }
            }
            .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
            
            
            // Text heading
            Text("Explore Your News Flasher")
                .font(.largeTitle)
                .fontWeight(.bold)
                .padding(.vertical, 20)
        }
    }
}

#Preview {
    LandingPageView()
}
