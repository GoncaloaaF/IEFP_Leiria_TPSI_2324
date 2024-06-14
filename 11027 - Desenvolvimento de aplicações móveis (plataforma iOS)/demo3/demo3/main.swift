//
//  main.swift
//  demo3
//
//  Created by Gonçalo Feliciano on 14/06/2024.
//

import Foundation

// tuplos


var tp = ("Gonçalo", 2021, "IEFP", true)

print(tp.0)

print(tp.1)

print(tp.2)

print(tp.3)


var tp2:(String, Int, String, Bool) = ("Gonçalo", 2021, "IEFP", true)

print("--------")

var tp4:(nome: String, inicio:Int, local:String, ativo:Bool) = (nome: "Gonçalo", inicio: 2024, local:"IEFP", ativo: true)


print(tp4.nome)
print(tp4.1)

print("--------")


var tp5:(String, Int, String, Bool) =  (nome: "Gonçalo", inicio: 2024, local:"IEFP", ativo: true)

print(tp.0)


print("--------")


var tp6:(nome: String, inicio:Int, local:String, ativo:Bool) = ( "Gonçalo",  2024, "IEFP",  true)



print("--------")


//var tp7:(nome: String, inicio:Int, local:String, ativo:Bool) =  (inicio: 2024, nome: "Gonçalo", local:"IEFP", ativo: true)


print("----collections----")
/* collections

 arrays - []
 Dict -
 set -
 

*/
print("----arrays----")
// arrays


var arr1 = ["val1", "val2", "val3"]
print(arr1)

arr1.append("Novo Val")
print(arr1)


arr1.remove(at: 0)
print(arr1)


arr1.insert("Novo Valor 2", at: 0)
print(arr1)




var arr2 = ["val1", "val2"]
print(arr2.count)
print(arr2.capacity)

print("---")

arr2.append("val3")
print(arr2.count)
print(arr2.capacity)

arr2.append("val3")
print(arr2.count)
print(arr2.capacity)

arr2.append("val3")
print(arr2.count)    // 5
print(arr2.capacity) // 8



arr2.removeAll(keepingCapacity: true)
print(arr2.count) // 0
print(arr2.capacity)// 8

/*
arr2.removeAll()
print(arr2.count) // 0
print(arr2.capacity)// 8
*/


print("----for----")

for elm in arr1{
    print(elm)
    
}

print("----foreach----")

arr1.forEach { elm in
    print(elm)
}


print("----sorted----")

var arr1_s = arr1.sorted()

print(arr1_s)

print(arr1)


print("----sort----")
arr1.sort()
print(arr1)




print("--------")


print(arr1[0])


arr1[0] = "foo boo"

print(arr1[0])


// Dict






// set




