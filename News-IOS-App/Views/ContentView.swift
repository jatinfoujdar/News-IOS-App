//
//  ContentView.swift
//  News-IOS-App
//
//  Created by jatin foujdar on 17/11/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        HeaderView()
        ScrollLottie()
        CardView()
        RecommendationView()
        Spacer()
        NavbarView()
    }
}

#Preview {
    ContentView()
}
