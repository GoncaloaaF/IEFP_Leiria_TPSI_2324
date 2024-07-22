//
//  mainVM.swift
//  Listas
//
//  Created by Gonçalo Feliciano on 22/07/2024.
//

import Foundation



class mainVM:ObservableObject{
    
    @Published var listaContactos = [Contacto(nome: "Joao"), Contacto(nome: "Antonio")]
    
    @Published var newName:String = .emptyString
    
    @Published var showError = false
    
    
    func addToListaContactos(){
        
        if !newName.isEmpty{
            listaContactos.append(Contacto(nome: newName))
            self.newName = .emptyString
        }else{
            showError.toggle()
        }
        
        
    }
    
    
}
