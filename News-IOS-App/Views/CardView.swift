import SwiftUI

struct CardView: View {
    let images = ["9","8","7","6","5","4","3","2","1"]
    var body: some View {
           ScrollView(.horizontal, showsIndicators: false) {
               HStack(spacing: 16) { 
                   ForEach(images, id: \.self) { imageName in
                       Image(imageName)
                           .resizable()
                           .scaledToFill()
                           .frame(width: 330, height: 200)
                           .cornerRadius(10)
                           .clipped()
                   }
               }
               .padding()
           }
       }
   }

#Preview {
    CardView()
}
