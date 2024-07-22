//
//  newView.swift
//  textF
//
//  Created by Gonçalo Feliciano on 19/07/2024.
//

import SwiftUI

struct newView: View {
    
    @State var nome:String
    @State var email:String
    @State var opacity:CGFloat = 0.5
    @State var contrast:CGFloat = 0.5

    
    var body: some View {
        
        NavigationStack{
            VStack{
            Image("img2")
                .resizable()
                .scaledToFill()
                .frame(width: 200, height: 200)
                .background(.black)
                .clipped()
                .shadow(color: .brown, radius: 30, x: 50.0, y: 50.0)
                .opacity(opacity)
                .contrast(contrast)
                .brightness(0)
                .saturation(0)
                
                
                Slider(value: $opacity, in: 0...1, step: 0.05)
                Slider(value: $contrast, in: 0...10, step: 0.05)

                //.clipShape(/*@START_MENU_TOKEN@*/Circle()/*@END_MENU_TOKEN@*/)
                
                
            
          
                Text(nome)
                Text(email)
                Image(systemName: "03.square.fill")
                    .font(.title)
            }
            .navigationTitle("view 2")
            
            
            NavigationLink("go To view 3") {
                Text("View 3")
                
            }
            
        }
    }
}

#Preview {
    newView(nome: "nome", email: "email")
}
