//
//  Agenda.swift
//  demo_satic
//
//  Created by Gonçalo Feliciano on 21/06/2024.
//

import Foundation


class Agenda{

    static var myAgenda = Agenda()
    
    var listConctos:[String]
    
    init(listConctos: [String] = []) {
        self.listConctos = listConctos
    }
    
}
