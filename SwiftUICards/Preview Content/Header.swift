//
//  Header.swift
//  SwiftUICards
//
//  Created by Lorenzo on 1/25/21.
//

import SwiftUI

struct Header: View {
    var body: some View {
        HStack() {
        VStack(alignment: .leading) {
            Text("Your Reading")
                .font(.title)
                .fontWeight(.black)
        }
       // .layoutPriority(100)
            Spacer()
              
        }
        .padding()
    }
}

struct Header_Previews: PreviewProvider {
    static var previews: some View {
        Header()
    }
}
