//
//  Contacto.swift
//  Classes
//
//  Created by Gonçalo Feliciano on 14/06/2024.
//

import Foundation

class foo{
    
}

class Contacto{
    var nome: String
    var empresa: String?
    var email: String
    var telefone: Int
    var teste: foo?
    
    init(nome: String, empresa: String? = nil, email: String, telefone: Int) {
        self.nome = nome
        self.empresa = empresa
        self.email = email
        self.telefone = telefone
    }
    

    //v1
    func getEmpresa() -> String{
        self.empresa ?? "Sem empresa"
    }
    
}

struct Contacto2{
    var nome: String
    var empresa: String?
    var email: String
    var telefone: Int
    
    init(nome: String, empresa: String? = nil, email: String, telefone: Int) {
        self.nome = nome
        self.empresa = empresa
        self.email = email
        self.telefone = telefone
    }
    
    
    //v1
    func getEmpresa() -> String{
        self.empresa ?? "Sem empresa"
    }

}
