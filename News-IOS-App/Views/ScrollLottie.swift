import SwiftUI
import Lottie

struct ScrollLottie: View {
    let animationNames = ["Assest.json","Science.json",  "Data.json", "Business.json",
    "Sports.json","Tech.json","Travel.json","Share Market.json"]
   
    
    var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            HStack(spacing: 20) {
                ForEach(animationNames, id: \.self) { animationName in
                    VStack {
                        LottieCard(animationName: animationName)
                    }
                    .frame(width: 100, height: 100)
                    .background(Color.gray.opacity(0.1))
                    .cornerRadius(8)
                }
            }
            .padding()
        }
    }
}

struct LottieCard: View {
    let animationName: String
    
    var body: some View {
        LottieView(animation: .named(animationName))
            .playbackMode(.playing(.toProgress(1, loopMode: .loop)))
            .frame(width: 100, height: 100)
    }
}

#Preview {
    ScrollLottie()
}
