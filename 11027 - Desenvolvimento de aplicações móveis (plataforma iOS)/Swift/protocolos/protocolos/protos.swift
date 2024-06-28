//
//  protos.swift
//  protocolos
//
//  Created by Gonçalo Feliciano on 28/06/2024.
//

import Foundation

protocol Savable{
    
    func saveData() -> Bool
    func loadData(key: String) -> Bool
    
}



protocol protocolB{
    
    var key: String { get }
    var key2: String { get set }
  
}
