//
//  main.swift
//  Classes
//
//  Created by Gonçalo Feliciano on 14/06/2024.
//

import Foundation

print("-----class------")


let ct = Contacto(nome: "Nome Ct", empresa: "IEFP", email: "bla_bla@iefp.pt", telefone: 1232444113)

print(ct.nome)
print(ct.getEmpresa())

print("--")

let ct2 = Contacto(nome: "Nome Ct", email: "bla_bla@iefp.pt", telefone: 1232444113)

print(ct2.nome)
print(ct2.getEmpresa())

print("--")
var ct3 = ct2

print("ct:  \(ct2.nome)")
print("ct3: \(ct3.nome)")

ct3.nome = "João Carlos"

print("ct3: \(ct3.nome)")
print("ct:  \(ct2.nome)")


print("--")

let ct22 = Contacto(nome: "Nome Ct", empresa: "IEFP", email: "bla_bla@iefp.pt", telefone: 1232444113)


print(ct2 === ct3)
print(ct === ct22)

print("--")

// print(ct == ct22) <- não funciona, Ainda.....

print("--")


print("-----struct------")

let cts = Contacto2(nome: "Nome Ct", empresa: "IEFP", email: "bla_bla@iefp.pt", telefone: 1232444113)

print(cts.nome)
print(cts.empresa!)


let cts2 = Contacto2(nome: "Nome Ct", email: "bla_bla@iefp.pt", telefone: 1232444113)
print(cts2.nome)
print(cts2.getEmpresa())



print("--")
var cts3 = cts2

print("cst:  \(cts2.nome)")
print("cts3: \(cts3.nome)")

cts3.nome = "João Carlos"

print("cts3: \(cts3.nome)")
print("cts:  \(cts2.nome)")


print("--")

// print(cts2 === cts3) <- não funciona

print("---")

// print(cts2 == cts3) <- não funciona, Ainda.....
