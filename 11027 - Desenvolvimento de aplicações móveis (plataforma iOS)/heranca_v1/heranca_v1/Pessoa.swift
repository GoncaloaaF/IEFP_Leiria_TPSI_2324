//
//  Pessoa.swift
//  heranca_v1
//
//  Created by Gonçalo Feliciano on 24/06/2024.
//

import Foundation


class Pessoa{
    
    fileprivate var id = UUID()
    
    
    var nome: String
    var idade: Int
    var email: String
    var telefone:Int?
    
    init(nome: String, idade: Int, email: String) {
        self.nome = nome
        self.idade = idade
        self.email = email
        self.telefone = nil
    }
    
    func getInfo() -> String{
        
        guard let telefone else{
            return "nome: \(nome)\nidade: \(idade)\nemail\(email)\nSem telefone"
        }
        
        return "nome: \(nome)\nidade: \(idade)\nemail\(email)\nTelefone: \(telefone)"
    }
    
    
    final func getUUID() -> UUID{
        id
    }
    
    
}



class Professor2: Pessoa {
    
    var listaTurmas: [String]
        
    init(nome: String, idade: Int, email: String, listaTurmas: [String] = []) {
        self.listaTurmas = listaTurmas
        super.init(nome: nome, idade: idade, email: email)
        print(super.id)
    }
    
    
    override func getInfo() -> String {
        "\(super.getInfo())\nLista de Turmas: \(listaTurmas)"
    }
   
}
