//
//  Todo.swift
//  loadData_cmd
//
//  Created by Gonçalo Feliciano on 28/06/2024.
//

import Foundation


/*
 
 {
    "userId": 1,
    "id": 1,
    "title": "delectus aut autem",
    "completed": false
  }
 */

typealias TODOs = [Todo]

struct Todo: Codable{
    
    var userId: Int
    var id: Int
    var title: String
    var completed: Bool
    
}


enum MyError: Error{
    case RespostaInvalida
    case erroAddTodo
}


class loadAPI{
    
    var url:URL
    

    init(url: String) {
        
        self.url = URL(string: url)!
    }
    
    
    func loadAllData() async throws -> TODOs{
        
        let urlReq = URLRequest(url: self.url)
        
        let (data, resp) = try await URLSession.shared.data(for: urlReq)
        
        guard let resp = resp as? HTTPURLResponse,  (200...299).contains(resp.statusCode) else {
            
            throw MyError.RespostaInvalida
            
        }
        
        let myData = try JSONDecoder().decode(TODOs.self, from: data)
        
        return myData
        
    }
    
    func addTodo(_ todo:Todo) async throws{
        
        
        // fazer append do path -> addTodo
        url.append(path: "addTodo")
        
        var urlReq = URLRequest(url: self.url)
        
        urlReq.setValue("application/json", forHTTPHeaderField: "accept")
        urlReq.setValue("application/json", forHTTPHeaderField: "Content-Type")
        
        
        urlReq.httpMethod = "POST"
        
        let myData = try JSONEncoder().encode(todo)

        urlReq.httpBody = myData
        
        let (_, resp) = try await URLSession.shared.data(for: urlReq)
        
        
        guard let resp = resp as? HTTPURLResponse, resp.statusCode == 200 else{
            let resp = resp as! HTTPURLResponse
            print("HTTPURLResponse: \(resp.statusCode)")
            throw MyError.erroAddTodo
        }
        
  
        url.deleteLastPathComponent()
    }
    
    
    
    
    
}
