//
//  Preview.swift
//  SIgninPage
//
//  Created by Sirak on 11/24/19.
//  Copyright © 2019 Sirak. All rights reserved.
//

import SwiftUI

struct PreviewModel {
    var id : Int
    var image : String
}



struct Preview: View {
    
    
    var previw : PreviewModel

    
    
    var body: some View {
        
        ZStack {
             RoundedRectangle(cornerRadius: 12)
                .foregroundColor(Color.purple)
            .frame(width: 150, height: 80)
            
            
            Image(previw.image)
            .resizable()
            .scaledToFill()
            .frame(width: 150, height: 80)
            .clipped()
            .cornerRadius(12)

            
            Image(systemName : "play.circle")
            .resizable()
            .frame(width: 50, height: 50)
            .foregroundColor(Color.white)
               
        }
       

      
          
        
        
    }
}

struct Preview_Previews: PreviewProvider {
    static var previews: some View {
        Preview(previw: PreviewModel(id: 1, image: "kid"))
    }
}
