import SwiftUI

struct LandingPageView: View {
    @State private var currentIndex = 0
    @State private var timer: Timer? = nil
    let images = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "10"]
    
    var body: some View {
        ZStack {
            ScrollView(.horizontal, showsIndicators: false) {
                HStack(spacing: 20) {
                    ForEach(images.indices, id: \.self) { index in
                        Image(images[index])
                            .resizable()
                            .scaledToFit()
                            .cornerRadius(10)
                            .frame(width: 150, height: 150)
                    }
                }
                .padding(.bottom,300)
                .padding(.horizontal, 20)
            }
            .frame(height: 200)
            .onAppear {
                startImageTimer()
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
            VStack {
                Spacer()
                HStack {
                    Text("Get Started!")
                        .font(.headline)
                        .foregroundColor(.white)
                        .padding()
                        .background(Color.green)
                        .cornerRadius(10)
                }
                .padding(.bottom, 40)
            }
        }
        .edgesIgnoringSafeArea(.all)
        .background(Color.black)
        .onDisappear {
            timer?.invalidate()
        }
    }
    private func startImageTimer() {
    
        timer = Timer.scheduledTimer(withTimeInterval: 5, repeats: true) { _ in
            currentIndex = (currentIndex + 1) % images.count
        }
    }
}

#Preview {
    LandingPageView()
}
