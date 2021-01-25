//
//  ContentView.swift
//  SwiftUICards
//
//  Created by Lorenzo on 1/25/21.
//

import SwiftUI



struct ContentView: View {
   
    
    var articles: [Article] = [Article(image: "macos-programming", category: "MacOS", author: "Lorenzo Simpson", heading: "Building your first MacOS app"),
                               Article(image: "swiftui-button", category: "iOS", author: "Lorenzo Simpson", heading: "Building your first iOS app"),
                               Article(image: "flutter-app", category: "MacOS", author: "Lorenzo Simpson", heading: "Building your first MacOS app")]
    
    var body: some View {
        VStack(alignment: .leading) {
            NavigationView{
                ScrollView() {
                ForEach(articles, id: \.self, content: { article in
                    NavigationLink(destination: DetailView(article: article)) {
                                CardView(image: article.image, category: article.category, heading: article.heading, author: article.author)
                            }
                    }
               )}
                    .navigationBarTitle("Your Reading", displayMode: .large)
            }.accentColor(.black)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ScrollView() {
        CardView(image: "swiftui-button", category: "SwiftUI", heading: "Drawing a Border with Rounded Corners", author: "Simon Ng")
        }
        .offset( y: 100)
    }
}
