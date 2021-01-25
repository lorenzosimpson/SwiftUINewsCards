//
//  DetailView.swift
//  SwiftUICards
//
//  Created by Lorenzo on 1/25/21.
//

import SwiftUI

struct DetailView: View {
    var article: Article

    
    var body: some View {

           ScrollView {
               GeometryReader { geometry in
                   ZStack {
                       if geometry.frame(in: .global).minY <= 0 {
                        Image(article.image)
                           .resizable()
                           .aspectRatio(contentMode: .fill)
                           .frame(width: geometry.size.width, height: geometry.size.height)
                           .offset(y: geometry.frame(in: .global).minY/9)
                           .clipped()
                       } else {
                        Image(article.image)
                               .resizable()
                               .aspectRatio(contentMode: .fill)
                               .frame(width: geometry.size.width, height: geometry.size.height + geometry.frame(in: .global).minY)
                               .clipped()
                               .offset(y: -geometry.frame(in: .global).minY)
                       }
                   }
               }
                   .frame(height: 400)
               VStack(alignment: .leading) {
                    Text(article.category)
                        .font(.headline)
                        .foregroundColor(.secondary)
                    Text(article.heading)
                        .font(.title)
                        .fontWeight(.black)
                        .foregroundColor(.primary)
                        .lineLimit(3)
                        .lineSpacing(1)
                        .padding(.bottom, 10)
                    Text(article.author.uppercased())
                        .font(.caption)
                        .foregroundColor(.secondary)
                    Text("Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Cras ornare arcu dui vivamus arcu felis bibendum. Duis ultricies lacus sed turpis tincidunt. Molestie a iaculis at erat pellentesque adipiscing commodo elit. Ut sem nulla pharetra diam sit amet nisl. Diam donec adipiscing tristique risus nec. Risus pretium quam vulputate dignissim suspendisse. Risus viverra adipiscing at in tellus integer feugiat scelerisque. Mauris rhoncus aenean vel elit scelerisque mauris pellentesque pulvinar. Mollis nunc sed id semper risus in hendrerit gravida rutrum. Massa enim nec dui nunc mattis enim ut tellus. Quis viverra nibh cras pulvinar mattis. Pellentesque sit amet porttitor eget dolor morbi non. Neque laoreet suspendisse interdum consectetur libero id faucibus nisl tincidunt. Eget nunc scelerisque viverra mauris. Quis commodo odio aenean sed adipiscing diam donec adipiscing. Gravida cum sociis natoque penatibus et. Urna nec tincidunt praesent semper feugiat nibh. Tellus mauris a diam maecenas sed enim. Iaculis eu non diam phasellus vestibulum lorem sed risus ultricies.Scelerisque in dictum non consectetur a erat nam at. Quisque id diam vel quam. Accumsan lacus vel facilisis volutpat. At augue eget arcu dictum varius duis at consectetur lorem. Vestibulum rhoncus est pellentesque elit ullamcorper dignissim cras tincidunt lobortis. Eu tincidunt tortor aliquam nulla facilisi. Nulla posuere sollicitudin aliquam ultrices sagittis. Nulla facilisi nullam vehicula ipsum a. Quis hendrerit dolor magna eget est lorem ipsum dolor sit. Ultrices eros in cursus turpis massa tincidunt dui. Gravida cum sociis natoque penatibus et. Pulvinar sapien et ligula ullamcorper malesuada proin libero nunc. Eu consequat ac felis donec et odio pellentesque diam volutpat. Quis risus sed vulputate odio ut enim blandit volutpat. Diam maecenas ultricies mi eget mauris pharetra et ultrices neque. Vel quam elementum pulvinar etiam non quam lacus suspendisse faucibus.")
            }
                   .frame(width: 350)
        }
            .edgesIgnoringSafeArea(.top)
    }
    
}

//struct DetailView_Previews: PreviewProvider {
//    static var previews: some View {
//        //DetailView()
//    }
//}



