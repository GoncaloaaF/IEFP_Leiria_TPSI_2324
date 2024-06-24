//
//  main.swift
//  heranca_v1
//
//  Created by Gonçalo Feliciano on 24/06/2024.
//

import Foundation


var al = Aluno(nome: "Rui", idade: 20, turma: "TPSI2425")
var al2 = Aluno(nome: "Ana", idade: 30, turma: "TPSI2425")
var p1 = Professor(nome: "Carlos", idade: 40, email: "carlos@sapo.pt", listaTurmas: ["turma xpto"])
var p2 = Professor(nome: "Luis", idade: 35, email: "carlos@sapo.pt")

var lista = [al, al2, p1, p2]

//qual o tipo de dados da lista?



print("-----")
print(type(of: lista))
print("-----")

print(type(of: al))
for i in lista{
    print("-----")
    print(type(of: i))
    print(i is Professor)
    print("-----")
  
    /*if i is Professor{
        var aux = i as! Professor
        aux.listaTurmas.append("nova Turma")
    }
     */
    
    guard let aux = i as? Professor, aux.listaTurmas.isEmpty else{
        print("não é um porfessor")
        continue
    }
    
    aux.listaTurmas.append("nova Turma 2")
}


print(p1.listaTurmas)
print(p2.listaTurmas)



print("---------------------------------")

for i in lista{
    
    print(i.getInfo())
    
    print("----------------------")
}



var notas = [12,12,10,9,15]
print(notas.media())


var notas2 = [12,12,10,9,1,15, 19,19,10,20]
print(notas2.media())
