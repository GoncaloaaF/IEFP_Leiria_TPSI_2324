//
//  Contacto.swift
//  Listas
//
//  Created by Gonçalo Feliciano on 22/07/2024.
//

import Foundation


class Contacto: Identifiable{
    
    var id = UUID()
    
    var nome:String
    
    init(nome: String) {
        self.nome = nome
    }
    
}
