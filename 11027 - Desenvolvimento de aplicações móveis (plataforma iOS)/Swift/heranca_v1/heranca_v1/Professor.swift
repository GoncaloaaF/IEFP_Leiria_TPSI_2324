//
//  Professor.swift
//  heranca_v1
//
//  Created by Gonçalo Feliciano on 24/06/2024.
//

import Foundation

class Professor: Pessoa {
    
    var listaTurmas: [String]
        
    init(nome: String, idade: Int, email: String, listaTurmas: [String] = []) {
        self.listaTurmas = listaTurmas
        super.init(nome: nome, idade: idade, email: email)
    }
    
    
    override func getInfo() -> String {
        "\(super.getInfo())\nLista de Turmas: \(listaTurmas)"
    }
   
}

extension Professor{
    
    
}
