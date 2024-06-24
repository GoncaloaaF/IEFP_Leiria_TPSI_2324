//
//  utils.swift
//  heranca_v1
//
//  Created by Gonçalo Feliciano on 24/06/2024.
//

import Foundation


extension Array<Int>{
    
    func media() -> Double{
        var sum = 0
        
        for i in self{
            sum += i
        }
        
        return Double(sum)/Double(self.count)
    }
    
}
