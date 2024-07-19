//
//  Aluno.swift
//  heranca_v1
//
//  Created by Gonçalo Feliciano on 24/06/2024.
//

import Foundation


class Aluno: Pessoa{
    
    var turma: String
    
    init(nome: String, idade: Int, email: String = "Sem email", turma: String = "Sem turma") {
        
        self.turma = turma
        
        
        super.init(nome: nome, idade: idade, email: email)
    }
    
    
    override func getInfo() -> String {
        "\(super.getInfo())\nTurma: \(turma)"
    }
    
    
}
