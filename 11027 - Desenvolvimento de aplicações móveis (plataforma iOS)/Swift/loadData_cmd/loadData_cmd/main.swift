//
//  main.swift
//  loadData_cmd
//
//  Created by Gonçalo Feliciano on 28/06/2024.
//

import Foundation


let apiHandler = loadAPI(url: "https://jsonplaceholder.typicode.com/users/1/todos")


let myData = try! await apiHandler.loadAllData()

print(myData[0])

