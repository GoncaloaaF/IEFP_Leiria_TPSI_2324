//
//  main.swift
//  demo2
//
//  Created by Gonçalo Feliciano on 11/06/2024.
//



print("--------funcs---------")

func nome(){
    print("ola Mundo")
    
}

nome()




func olaMundo(nome:String){
    print("Ola Mundo, \(nome)")
    
}

olaMundo(nome: "Gonçalo")

func olaMundo2(nome:String, ano:Int){
    print("Ola Mundo, \(nome) em \(ano)")
    
}
olaMundo2(nome: "Gonçalo", ano:2024)
//olaMundo2(ano:2024, nome: "Gonçalo")


func olaMundo3(nome:String, ano:Int) -> String{
     return "Ola Mundo, \(nome) em \(ano)"
}
print(olaMundo3(nome: "Gonçalo", ano:2024))



func olaMundo4(nome:String, ano:Int) -> String{
    "Ola Mundo, \(nome) em \(ano)"
}
print(olaMundo4(nome: "Gonçalo", ano:2024))



func soma(_ val1:Int, com val2:Int) -> Int{
    val1+val2
}


//soma(10, 20)
print(soma(10, com: 20))


//div(10, 20)

//div(10, por: 20)


print("-------- opts ---------")

var myNome:String? // -> nil (null de kt, e None de py)
var myNome2:String // ----


myNome = "Gonçalo"
//print(myNome)

myNome = nil
//print(myNome)

myNome = "Gonçalo"
print("-------- !  ---------")
print(myNome!)

print("-------- if let novo_nome = myNome  ---------")


myNome = nil
if let novo_nome = myNome{
    print(novo_nome)
}else {
    print("o nome é nil")
}

print("------------------")
myNome = "Ana"

if let novo_nome = myNome, novo_nome.count > 4{
    print(novo_nome)
}else {
    print("o nome é nil")
}
print("------------------")

myNome = "Anaaa"

if let myNome, myNome.count > 4{ // if let myNome = myNome <=> if let myNome
    print(myNome)
}else {
    print("o nome é nil")
}


print("-------- ??  ---------")

myNome = "Gonçalo"
print(myNome ?? "o nome é nil")



print("-------- guard let  ---------")


func demo(idade2:Int, nome:String? = nil, idade:Int){
    
    print("codigo")
    
    guard let nome else{
        print("o nome é nil")
        return
    }
    
    print(nome)
    print("codigo")
    
}

demo(idade2: 31, nome: "Gonçalo", idade:20)

print("-------")
demo(idade2: 21, idade:21)



/*
 
 !
 
 if let
 
 ??
 
 guard let
 
 
 */
