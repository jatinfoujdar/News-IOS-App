//
//  ListView.swift
//  News-IOS-App
//
//  Created by jatin foujdar on 27/11/24.
//

import SwiftUI

struct ListView: View {
    let items = [
        ("1", "Breaking News: SwiftUI Tips"),
        ("2", "Latest Tech News"),
        ("3", "iOS 17 Features Revealed")
    ]
    
    var body: some View {
        List(items, id: \.0) { item in
            HStack {
                Image(item.0)
                    .resizable()
                    .frame(width: 50, height: 50)
                    .cornerRadius(5)
                
                Text(item.1)
                    .font(.body)
                    .foregroundColor(.primary)
                
                Spacer()
            }
       
        }
        .navigationTitle("News List")
    }
}

#Preview {
    ListView()
}
