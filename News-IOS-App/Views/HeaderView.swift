import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack {
            
            Image("list")
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)

            Spacer()
            Text("Breaking News")
                .font(.title)
                .fontWeight(.bold)
            Spacer()
            Image("search")
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
                .padding()

          
            Image("bell")
                .resizable()
                .scaledToFit()
                .frame(width: 24, height: 24)
        }
        .padding()  
    }
}

#Preview {
    HeaderView()
}
