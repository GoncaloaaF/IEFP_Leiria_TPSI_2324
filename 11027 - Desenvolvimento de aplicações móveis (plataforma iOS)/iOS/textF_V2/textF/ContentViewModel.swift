//
//  ContentViewModel.swift
//  textF
//
//  Created by Gonçalo Feliciano on 19/07/2024.
//

import Foundation


class ContentViewModel: ObservableObject{
    @Published var msgT = ""
    @Published var nomeTF = ""
    @Published var emailTF = ""
    
    
    func criaMsg(){
        msgT = "\(nomeTF)\n\(emailTF)"
        
    }
    
}
