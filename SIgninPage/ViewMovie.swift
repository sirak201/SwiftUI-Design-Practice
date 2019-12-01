//
//  ViewMovie.swift
//  SIgninPage
//
//  Created by Sirak on 11/26/19.
//  Copyright © 2019 Sirak. All rights reserved.
//

import SwiftUI



struct ViewMovie: View {
    
    var day = ["1" , "2" , "3" , "4" , "5"]
    var str = ["Thr", "Fri" , "Sat" , "Mon" , "Sat"]
    
    
    var preViewData = [
            PreviewModel(id: 2, image: "pick2"),
            PreviewModel(id: 3, image: "kid"),
            PreviewModel(id: 4, image: "dora"),
            PreviewModel(id: 5, image: "kid"),
            PreviewModel(id: 6, image: "alpha")
    ]
    var preViewData2 = [
            PreviewModel(id: 2, image: "els"),
            PreviewModel(id: 3, image: "alpha"),
            PreviewModel(id: 4, image: "dora"),
            PreviewModel(id: 5, image: "kid"),
            PreviewModel(id: 6, image: "alpha")

    ]
    
    var body: some View {
        
        
       
        ZStack(alignment : .topLeading) {
           
            Color.black
                .edgesIgnoringSafeArea(.all)
            
             ScrollView {
            
            VStack(alignment : .leading) {
                HStack(spacing : 15) {
                    ZStack {
//                        RoundedRectangle(cornerRadius: 12)
//                        .foregroundColor(Color.red)
//                        .frame(width: 140, height: 240)
                        
                        Image("pick2")
                            .resizable()
                           .scaledToFill()
                            .frame(width: 140, height: 240)
                            .clipped()
                            .cornerRadius(12)
                            
                        .shadow(color: Color.white.opacity(0.3), radius: 20,  y: 5)
                    }
                    VStack(spacing : 20) {
                        ScrollView(.horizontal, showsIndicators: false){
                                  HStack {
                                    ForEach(0..<preViewData.count) { i in
                                       
                                       Preview(previw: self.preViewData[i])
               
                               }
                                     
                           }
               }.shadow(color: Color.black.opacity(0.8), radius: 20,  y: 5)
                        
                        ScrollView(.horizontal, showsIndicators: false){
                                   HStack {
                                     ForEach(0..<preViewData2.count) { i in
                                        
                                        Preview(previw: self.preViewData2[i])
                                
                                                }
                                                      
                                            }
                                }.shadow(color: Color.black.opacity(0.8), radius: 20,  y: 5)
                    }
           
                
            }.padding(.leading , 50)
              .padding(.top , 10)
               .padding(.bottom , 40)
                
                VStack(spacing : 8) {
                    Text("Pickachu : Detactive")
                                    
                                    .foregroundColor(Color.white)
                                     .font(.system(size: 40))
                                                    .fontWeight(.bold)
                                    
                                    .lineLimit(2)
                                    .frame(width :250)
                                    .padding(.leading , 20)
                    
                    Text("Adventure , Family , Fantasy ")
                        .foregroundColor(Color.gray)
                        .padding(.leading , 40)
                    
                }.padding(.bottom , 20)
                
                HStack {
                    HStack {
                        Text("9.8") .foregroundColor(Color.white)
                                    .font(.system(size: 20))
                                    .fontWeight(.heavy)
                        Text("23,500").foregroundColor(Color.gray)
                    }
                    
                    Spacer()
                    
                    HStack {
                          Text("2019") .foregroundColor(Color.white)
                                      //.font(.system(size: 20))
                                     // .fontWeight(.heavy)
                          Text("1hr 44min").foregroundColor(Color.gray)
                    }.padding(.trailing , 30)
                    
                }  .padding(.leading , 40)
                
                
                ZStack {
                    RoundedRectangle(cornerRadius: 12)
                        .foregroundColor(Color.gray)
                          .frame(height : 100)
                          .edgesIgnoringSafeArea(.trailing)
                         .padding(.leading , 30)
              
                    Calander()
                        .frame(height : 100)
                        .edgesIgnoringSafeArea(.trailing)
                        .padding(.leading , 50)
                    
                }
              
                
            
        }
        }
                .padding(.top , 80)
              .background(Color.black)
            .edgesIgnoringSafeArea(.all)
            
        }
        //
//
    }
}

struct ViewMovie_Previews: PreviewProvider {
    static var previews: some View {
        ViewMovie()
    }
}

struct Calander : View {
    
var day = ["1" , "2" , "3" , "4" , "5" , "6" , "7"]
var str = ["Thr", "Fri" , "Sat" , "Mon" , "Sun", "Wed" , "Tue"]
  var body: some View {
        ScrollView(.horizontal, showsIndicators: false) {
            
            HStack(spacing : 30) {

         ForEach(0..<day.count) { i in
            
            if i == 0 {
                VStack {
                     Text("\(self.day[i])").foregroundColor(Color.white)
                    .foregroundColor(Color.white)
                                           .font(.system(size: 20))
                                            .fontWeight(.heavy)
                                           .padding(.bottom , 10)
                    
                    
                     Text("\(self.str[i])")
                        .foregroundColor(Color.white)
                        .font(.system(size: 15))
                        .fontWeight(.heavy)
                 }
                .frame(width : 70, height: 95)
                
                .background(RoundedRectangle(cornerRadius: 15).foregroundColor(Color.purple))
            } else {
                VStack {
                     Text("\(self.day[i])")
                        .foregroundColor(Color.white)
                                               .font(.system(size: 20))
                                               .fontWeight(.heavy)
                                                .padding(.bottom , 10)

                     Text("\(self.str[i])").foregroundColor(Color.white)
                                            .foregroundColor(Color.white)
                                           .font(.system(size: 15))
                                           .fontWeight(.heavy)
                 }
            }
            
               
                }
            }
        }
            
//            VStack {
//                Text("9")
//                Text("Thru")
            }
        
    
    


}
