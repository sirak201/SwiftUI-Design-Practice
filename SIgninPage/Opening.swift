//
//  Opening.swift
//  SIgninPage
//
//  Created by Sirak on 11/24/19.
//  Copyright © 2019 Sirak. All rights reserved.
//

import SwiftUI

struct OpeningPreview {
    var title : String
    var id : Int
    var image : String
}



struct Opening: View {
    
    var opening : OpeningPreview
    @State var showView = false
    
    
    var body: some View {

        VStack(spacing : 0) {
            ZStack {
            RoundedRectangle(cornerRadius: 12)
                          .foregroundColor(Color.red)
                          .frame(width: 100, height: 200)
                      
                Image(opening.image)
              .resizable()
              .scaledToFill()
              .frame(width: 100, height: 200)
              .clipped()
              .cornerRadius(12)
            }
            
            Text(opening.title)
            .font(.system(size: 20))
                .fontWeight(.regular)
            .lineLimit(2)
            .frame(width: 100, height: 80)
          
        
        }
        

    }
}

struct Opening_Previews: PreviewProvider {
    static var previews: some View {
        Opening(opening: OpeningPreview(title: "Kid", id: 1, image: "kid"))
    }
}
