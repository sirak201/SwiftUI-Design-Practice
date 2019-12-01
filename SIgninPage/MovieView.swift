//
//  MovieView.swift
//  SIgninPage
//
//  Created by Sirak on 11/24/19.
//  Copyright © 2019 Sirak. All rights reserved.
//

import SwiftUI

struct MovieView: View {
    
    var data = [MovieModel(id: 1, image: "nar", title: "Narnia"),
                MovieModel(id: 2, image: "dark", title: "Dark"),
                MovieModel(id: 3, image: "x", title: "X-Men Dark Phenoix"),
                MovieModel(id: 4, image: "ch", title: "Charlies Angel"),
                MovieModel(id: 5, image: "lalibela", title: "Lalibela"),
                MovieModel(id: 6, image: "4500 (1)", title: "Second Lablibela"),
                MovieModel(id: 1, image: "4500", title: "Beter kistine"),
                MovieModel(id: 2, image: "lalibela", title: "Lalibela"),
                MovieModel(id: 3, image: "4500 (1)", title: "Second Lablibela"),
    ]
    
    var preViewData = [
            PreviewModel(id: 1, image: "dora"),
            PreviewModel(id: 2, image: "kid"),
            PreviewModel(id: 3, image: "alpha"),
            PreviewModel(id: 4, image: "dora"),
            PreviewModel(id: 5, image: "kid"),
            PreviewModel(id: 6, image: "alpha")
    ]
    
    
    var opeing = [
            OpeningPreview(title: "Averngers End Game", id: 1, image: "avenagers"),
            OpeningPreview(title: "Aquaman", id: 1, image: "aqua"),
            OpeningPreview(title: "Aladin", id: 1, image: "aladin"),
           OpeningPreview(title: "Alpha", id: 1, image: "alpha"),
           OpeningPreview(title: "Dora", id: 1, image: "dora"),
           OpeningPreview(title: "Pokemon : Detactive", id: 1, image: "pick2")

    
    ]
    
    var body: some View {
        
        
        NavigationView {

        ScrollView(.vertical, showsIndicators: false) {
            ZStack(alignment: .topLeading) {
                Rectangle().foregroundColor(Color(red: 252, green: 252, blue: 252))
                

                VStack(alignment: .leading , spacing: 0) {
                    Text("RECENTLY VIEWED")
                        .font(.system(size: 30, weight: .heavy, design: .default))
                        .multilineTextAlignment(.leading)
                        .padding()

                     VStack(alignment: .leading) {
                        ScrollView(.horizontal, showsIndicators: false){
                                       HStack {
                                         ForEach(0..<data.count) { i in
                                             Movie(model: self.data[i])
                                         }
                                      }
                                     }
                                     .frame(height: 200)
                    }

                    Text("TRAILER")
                    .padding()
                    .font(.system(size: 30, weight: .heavy, design: .default))
                    .multilineTextAlignment(.leading)

                     VStack(alignment: .leading) {
                        ScrollView(.horizontal, showsIndicators: false){
                                       HStack {
                                         ForEach(0..<preViewData.count) { i in
                                            
                                            Preview(previw: self.preViewData[i])
                    
                                    }
                                          
                                }
                        }.shadow(color: Color.black.opacity(0.8), radius: 20,  y: 5)

                                     .frame(height: 150)
                     }.padding(.leading , 20)
                    
                     Text("OPENING THIS WEEK")
                        .font(.system(size: 30, weight: .heavy, design: .default))
                         .multilineTextAlignment(.leading)
                         .padding()
                    
                    VStack(alignment: .leading) {
                        
                        NavigationLink(destination: ViewMovie()) {

                           ScrollView(.horizontal, showsIndicators: false){
                            HStack (spacing : 40){
                                            ForEach(0..<opeing.count) { i in
                                               
                                                Opening(opening: self.opeing[i])
                       
                                       }
                                             
                            }
                           }
                           .shadow(color: Color.black.opacity(0.8), radius: 20,  y: 5)

                            .frame(height: 300)
                            
                        }
                        .buttonStyle(PlainButtonStyle())
                        }.padding(.leading , 20)

                   

                    
                }.frame(maxWidth : .infinity , alignment: .topLeading)
                 .padding(.top , 20)
                 
            }
        }

        }.edgesIgnoringSafeArea(.top)
    }

}

struct MovieView_Previews: PreviewProvider {
    static var previews: some View {
        MovieView()
    }
}
