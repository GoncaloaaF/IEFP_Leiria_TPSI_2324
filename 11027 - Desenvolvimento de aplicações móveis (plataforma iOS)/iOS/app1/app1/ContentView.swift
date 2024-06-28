//
//  ContentView.swift
//  app1
//
//  Created by Gonçalo Feliciano on 28/06/2024.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
    
        VStack {
            Text("Hello")
                .font(Font.largeTitle)
                .fontWeight(Font.Weight.bold)
                .frame(width: 200, height: 60)
                .background(.blue)
                .foregroundColor(.white)
                .clipShape(Capsule())
                .zIndex(1)
                
            Spacer()
                .frame(height: /*@START_MENU_TOKEN@*/100/*@END_MENU_TOKEN@*/)
            
            Text("Hello")
                .font(.largeTitle)
                .frame(width: 250, height: 70)
                .background(.red)
                .zIndex(0)
                .border(.black)
                
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
