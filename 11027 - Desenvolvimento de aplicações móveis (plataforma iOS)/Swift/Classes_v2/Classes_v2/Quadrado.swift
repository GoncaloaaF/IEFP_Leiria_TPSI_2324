//
//  Quadrado.swift
//  Classes_v2
//
//  Created by Gonçalo Feliciano on 14/06/2024.
//

import Foundation


class Quadrado{
    /*
    var logedIn:Bool{
        didSet{
            
            if logedIn{
                // load de dados
            }else{
                // "clean" da memoria
            }
        }
        
    }
     
     */
     
    var lado:Double{
        willSet{
            print("o lado vai mudar de \(self.lado) para \(newValue)")
        }
        
        didSet{
            print("o lado foi alterado para \(self.lado) de \(oldValue)")
        }
    }
    
    
    var area: Double{
        
        get{
            pow(lado, 2)
        }
        
        set{
            self.lado = sqrt(newValue)
        }
        
    }
    
    
    var perimetro: Double{
        
        get{
            4 * lado
        }
        
        set{
            self.lado = newValue / 4
        }
        
        
    }
    
    
    
    
    
    init(lado: Double) {
        self.lado = lado
    }
    
    
    
    
}
