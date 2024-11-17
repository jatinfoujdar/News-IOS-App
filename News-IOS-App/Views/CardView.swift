import SwiftUI

struct CardView: View {
    let article: Article
    
    var body: some View {
        VStack(alignment: .leading, spacing: 10) {
            
            if let imageUrl = article.urlToImage, let url = URL(string: imageUrl) {
                AsyncImage(url: url) { image in
                    image
                        .resizable()
                        .aspectRatio(contentMode: .fill)
                        .frame(height: 150)
                        .clipped()
                        .cornerRadius(10)
                    Text(article.title)
                        .font(.headline)
                        .foregroundColor(.primary)
                        .lineLimit(2)
                    
               
                    Text(article.description)
                        .font(.subheadline)
                        .foregroundColor(.secondary)
                        .lineLimit(3)
                } placeholder: {
                    Color.gray.opacity(0.3)
                        .frame(height: 150)
                        .cornerRadius(10)
                }
            } else {
               
                Color.gray.opacity(0.3)
                    .frame(height: 150)
                    .cornerRadius(10)
            }
          
        }
        .padding()
        .background(Color(.systemBackground))
        .cornerRadius(15)
        .shadow(color: Color.black.opacity(0.1), radius: 5, x: 0, y: 5)
        .padding(.horizontal)
    }
}

#Preview {
    
    let sampleSource = Source(id: "1", name: "The Wall Street Journal")
    let sampleArticle = Article(
        id: 1,
        source: sampleSource,
        author: "nil",
        title: "WBD, NBA Settle Lawsuit; 'Inside The NBA' To Air On ESPN/ABC Beginning In 25-26",
        description: "Warner Bros. Discovery and the NBA have settled their lawsuit with Disney agreeing to license the TNT show 'Inside the NBA' featuring Charles Barkley and Shaquille O'Neal to ESPN and ABC starting next season.",
        url: "https://www.wsj.com/business/media/nba-warner-bros-discovery-lawsuit-settlement-7710547b",
        urlToImage: "https://basketball.realgm.com/images/nba/4.2/wiretap/photos/2006/Barkley_Charles_nba_240606.jpg",
        publishedAt: "2024-11-17T02:40:48Z",
        content: "Warner Bros. Discovery and the NBA have settled their lawsuit with Disney..."
    )
    
    CardView(article: sampleArticle)
}
