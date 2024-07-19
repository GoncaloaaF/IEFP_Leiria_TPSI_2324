//
//  Pessoa.swift
//  protocolos
//
//  Created by Gonçalo Feliciano on 28/06/2024.
//

import Foundation




class Pessoa{ 
    
    var id: Int
    var nome:String
    var idade: Int
    var listaAmigos: [Pessoa]
    
    
    init(id: Int, nome: String, idade: Int) {
        self.id = id
        self.nome = nome
        self.idade = idade
        self.listaAmigos = []
    }
    

    
}

extension Pessoa: Equatable, Comparable{

    static func == (lhs: Pessoa, rhs: Pessoa) -> Bool {
        lhs.id == lhs.id
    }
    
    static func < (lhs: Pessoa, rhs: Pessoa) -> Bool {
        lhs.nome < rhs.nome
    }
}

extension Pessoa: CustomStringConvertible{
    var description: String {
        "id: \(id) - nome: \(self.nome)"
    }
}




class Aluno: Pessoa, Savable{
    func saveData() -> Bool {
        true
    }
    
    func loadData(key: String) -> Bool {
        true
    }
}



struct Carro{
    private var _key: String
    
    private var _key2: String
    
}
    
 


extension Carro: protocolB{
    
    var key: String{
        get{
            self._key
        }
        
        set{
            
            self._key = newValue
        }
    }
    
    
    var key2: String{
        get{
            self._key2
        }
        
        set{
            self._key2 = newValue
        }
    }
    

}


extension Carro:Savable{
    
    func saveData() -> Bool {
        false
    }
    
    func loadData(key: String) -> Bool {
        false
    }
}



