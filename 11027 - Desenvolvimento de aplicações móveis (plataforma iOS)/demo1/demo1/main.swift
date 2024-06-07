//
//  main.swift
//  demo1
//
//  Created by Gonçalo Feliciano on 07/06/2024.
//

var nome = "Gonçalo"
var nome2: String = "Gonçalo"

var idade = 10
var idade2: Int = 17

let num1 = 10
let num2 = 20.1


print(num1)
print(num2)


let soma = Double(num1) + num2


print("a soma de \(num1) com \(num2) é \(soma)")


print(type(of: soma))


var num3 = 10
var num4 = 2


let div = num3 / num4
print(div)
print(type(of: div))


num3 = 10
num4 = 4
let div1 = Double(num3) / Double(num4)
print(div1)
print(type(of: div1))



var _nome = ""
var nome4 = ""

var π = 3.1415

var 天下皆謂我道大 = ""

var 🐶 = "Gato"

print("o 🐶 e um \(🐶)")


// condições


/*

 && - and
 || or

 */

num3 = 10
if num3 == 10 {
    print("Dez")
    
}else if num3 == 20{
    print("Vinte")
}else{
    print("Outro valor")
}


print("----switch------")

switch num3{
case 10:
    print("Dez")
    fallthrough
    print("Txt não executado")
    
case 20:
    print("Vinte")
default:
    print("Outro valor")
}

//range


// range(0,10, 2) <- py

// 0 .. 10  <- kt // 0 ate 10
// 0 ..< 10  <- kt // 0 ate 9

var r1 = 0...10  // 0 ate 10

var r2 = 0..<10  // 0 ate 9


// lopps

print("--------for----------")

for elm in 0...10 {
    print(elm)
    
}


for elm in 0...10 where elm % 2 == 0{
    print(elm)
}


print("--------for 2-------")


for elm in 0...100 {
    
    if elm == 10{
        break
    }
    
    if elm % 2 == 0{
        continue
    }
    
    print(elm)
    
}
print("-------- while -------")

var foo = 10
while foo > 0{
    
    print(foo)
    
    foo -= 1
        
}


print("-------- do while -------")
foo = 10

repeat{
    
    print(foo)
    
    foo -= 1
    
}while(foo > 0 )


