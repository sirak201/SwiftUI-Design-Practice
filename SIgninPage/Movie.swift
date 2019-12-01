//
//  Movie.swift
//  SIgninPage
//
//  Created by Sirak on 11/24/19.
//  Copyright © 2019 Sirak. All rights reserved.
//

import SwiftUI

struct MovieModel {
    var id : Int
    var image : String
    var title : String
}


struct Movie: View {
    var model : MovieModel
    var body: some View {
        VStack(spacing : 0) {
            Image(model.image)
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 75, height: 75)
            .clipped()
            .cornerRadius(20)
            
            Text(model.title)
            .font(.system(size: 20))
                .fontWeight(.regular)
            //.padding()
            .lineLimit(2)
            .frame(width: 100, height: 80)
        }
        
    
    }
}

struct Movie_Previews: PreviewProvider {
    static var previews: some View {
        Movie(model: MovieModel(id: 1, image: "4500", title: "Lalibela Lalibela"))
    }
}
