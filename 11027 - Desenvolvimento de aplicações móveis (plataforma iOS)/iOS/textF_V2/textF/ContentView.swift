//
//  ContentView.swift
//  textF
//
//  Created by Gonçalo Feliciano on 28/06/2024.
//

import SwiftUI
import UIKit

struct ContentView: View {
    
    @StateObject var vm = ContentViewModel()
    
    var body: some View {
        NavigationStack{
            VStack {
                
                Text(vm.msgT)
                    .font(.title)
                
                TextField("nome", text: $vm.nomeTF)
                    .font(.title3)
                    .frame(width: 250)
                    .textFieldStyle(.roundedBorder)
                
                
                TextField("email", text: $vm.emailTF )
                    .font(.title3)
                    .frame(width: 250)
                    .textFieldStyle(.roundedBorder)
                                
                Button {
                    vm.criaMsg()
                } label: {
                    myBtnView(txt: "Submit")
                }
                
            
                NavigationLink {
                    newView(nome: vm.nomeTF, email: vm.emailTF)
                } label: {
                    myBtnView(txt: "go to view 2", size: CGSize(width: 230, height: 60))
                }
                

            }
            .padding()
            .navigationTitle("Home Page")
        }
    }
}

#Preview {
    ContentView()
}
