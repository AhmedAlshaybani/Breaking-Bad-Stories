//
//  ContentView.swift
//  BreakingBad Story
//
//  Created by Dev.ahmed on 11/30/21.
//

import SwiftUI

struct StarterView: View {
    
    
    var body: some View {
        
        TabView {
            starterView(imageName: "1", description: "Walter White")
            starterView(imageName: "2", description: "Walter White")
            starterView(imageName: "3", description: "Walter White")

        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .always))
        .indexViewStyle(PageIndexViewStyle(backgroundDisplayMode: .always))
    }
}

struct starterView: View {
    
    var imageName: String
    var description: String

    var body: some View {
        
        
        
        GeometryReader { geo in
            
            ZStack(alignment: .center) {
                
                Image(imageName)
                    .frame(width: geo.size.width, height: geo.size.height, alignment: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                    .edgesIgnoringSafeArea(.all)
                    .blur(radius: 10)
                    .disabled(true)
                    

            
            Image(imageName)
                .resizable()
                
                .clipped()
                .aspectRatio(1, contentMode: .fit)
                
                .cornerRadius(10)
                .padding(.leading, 10)
                .padding(.trailing, 10)
                .frame(width: geo.size.width, height: geo.size.width, alignment: .center)
                
                
            
            }
            
        }
        .edgesIgnoringSafeArea(.top)
        
    }
    
    
    
    
    
    
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        StarterView()
            .preferredColorScheme(.light)
    }
}

