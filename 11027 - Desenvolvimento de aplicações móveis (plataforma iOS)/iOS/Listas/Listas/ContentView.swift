//
//  ContentView.swift
//  Listas
//
//  Created by Gonçalo Feliciano on 22/07/2024.
//

import SwiftUI

struct ContentView: View {
    
    @StateObject var vm = mainVM()
    
    var body: some View {
        NavigationStack{
            VStack{
                
                HStack{
                    TextField("nome", text: self.$vm.newName)
                        .textFieldStyle(.roundedBorder)
                        .padding()
                        .frame(width: 200)
                    Button(action: {
                        vm.addToListaContactos()
                        
                    }, label: {
                        Text("Add name")
                    })
                    .frame(width: 120, height: 40)
                    .background(.blue)
                    .foregroundColor(.white)
                    .clipShape(Capsule())
                    
                }
                
                
                List(vm.listaContactos){ ct in
                    
                    NavigationLink {
                        Text(ct.nome)
                    } label: {
                       ListItemView(contacto: ct)
                    }
                }
                
                
            }
            .alert(isPresented: $vm.showError) {
                Alert(title: Text("O nome não pode estar em branco"))
            }
            
        }
    }
}

#Preview {
    ContentView()
}
