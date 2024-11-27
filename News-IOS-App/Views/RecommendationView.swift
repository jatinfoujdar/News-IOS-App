//
//  RecommendationView.swift
//  News-IOS-App
//
//  Created by jatin foujdar on 27/11/24.
//

import SwiftUI

struct RecommendationView: View {
    var body: some View {
        VStack{
            HStack{
                Text("Recommandation")
                Spacer()
                Text("View all")
            }
            .padding(.horizontal)
            .font(.title3)
            .fontWeight(.medium)
            
            ListView()
        }
    }
}

#Preview {
    RecommendationView()
}
