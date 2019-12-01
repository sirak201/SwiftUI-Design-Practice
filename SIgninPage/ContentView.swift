//
//  ContentView.swift
//  SIgninPage
//
//  Created by Sirak on 11/24/19.
//  Copyright © 2019 Sirak. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isEnglish = false

    var body: some View {
        
        GeometryReader { geometry in
            
            ZStack {
                Image("4500")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .edgesIgnoringSafeArea(.all)
                
                Rectangle()
                 .edgesIgnoringSafeArea(.all)
                 .foregroundColor(Color.black.opacity(0.25))
                
                
                VStack {
                   
                VStack(alignment: .center, spacing: 0){
                    Text(!self.isEnglish ? "Tripto" : "መሸጨኣ")
                        .font(.system(size: 60, weight: .heavy, design: .rounded))
                        .foregroundColor(Color.white)
                         .shadow(color: Color.black.opacity(0.8), radius: 20,  y: 5)
    //                    .background(Color.black)
                        .padding(.bottom , geometry.size.height / 3)
                    
    //                Spacer(minLength: 0)
                    
                    VStack(spacing : 15){
                        Button(action: {}) {
                    
                                ZStack {
                                    RoundedRectangle(cornerRadius: .infinity)
                                        .frame(width: 320, height: 60)
                                        .foregroundColor(Color.white)
                                               .padding([.leading , .trailing] , 100)
                                    Text(!self.isEnglish ? "Login" : "መጊብያ")
                                           .foregroundColor(Color.black)
                                           .font(.system(size: 20, weight: .bold, design: .rounded))
                                           
                                }.padding()
                                
                        
                        }.frame(width: 320, height: 60)
                            .shadow(color: Color.black.opacity(0.8), radius: 20,  y: 5)
                        
                    Button(action: {}) {
                               
                           ZStack {
                            RoundedRectangle(cornerRadius: .infinity)
                                   .frame(width: 320, height: 60)
                                   .foregroundColor(Color.white)
                                          .padding([.leading , .trailing] , 100)
                            Text(!self.isEnglish ? "Signup" : "መመዝገቢኣ")
                                      .foregroundColor(Color.black)
                                      .font(.system(size: 20, weight: .bold, design: .rounded))
                                      
                           }.padding()
                           
                                   
                       }.frame(width: 320, height: 60)
                        .shadow(color: Color.black.opacity(0.8), radius: 20,  y: 5)
                        
                        Toggle(isOn: self.$isEnglish) {
                            Text("ኣማሪኛ").foregroundColor(Color.black)
                            .padding()
                        }.padding()
                        
                        .frame(width : 200 , height: 50)
                        .background(RoundedRectangle(cornerRadius: .infinity).foregroundColor(Color.white)
                        )
                    }.padding(.top ,  geometry.size.height / 6)
                    
                   
                }
                    
            
                .frame(maxHeight : .infinity)
    //            .background(Color.red)

                
            }
                
             
                
            }
                    
            
            
        }

            
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
