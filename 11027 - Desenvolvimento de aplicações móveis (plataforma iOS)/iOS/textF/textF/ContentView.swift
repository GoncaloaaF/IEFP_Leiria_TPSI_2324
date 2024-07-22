//
//  ContentView.swift
//  textF
//
//  Created by Gonçalo Feliciano on 28/06/2024.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    @State var myText = "Hello,!"
    @State var myTFText = ""
    @State var myTFText2 = ""
    
    var body: some View {
        VStack {
            
            
        
            TextField("nome", text: $myTFText2 )
                .font(.title3)
                .frame(width: 250)
                .textFieldStyle(.roundedBorder)
            
            Text(myTFText2)
                .font(.largeTitle)
            
        
            TextField("nome", text: $myTFText )
                .font(.title3)
                .frame(width: 250)
                .textFieldStyle(.roundedBorder)
            
            Text(myText)
                .font(.largeTitle)
            
            
            Button {
                myText = myTFText
                
            } label: {
                Text("Submit")
                    .font(.largeTitle)
                    .frame(width: 200, height: 60)
                    .background(.blue)
                    .tint(.white)
                    .clipShape(Capsule())
            }

            
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
