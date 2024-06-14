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

 arrays -    []
             
 Dict -      [:]
 set -
 

*/
print("----arrays----")
// arrays

var arr0:[Int] = []

var arr1:[String] = ["val1", "val2", "val3"]
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




var arr3 = [10, 20, 5, 30]
arr3.sort { lhs, rhs in
    lhs  < rhs
}

print(arr3)


arr3 = [10, 20, 5, 30]
arr3.sort{ $0 < $1 }

print(arr3)


arr1 = []
print(arr1.max() ?? 0)


// Dict

print("----------dict--------")

var dict0:[String: Int] = [ : ]


var dict1 = ["Key": "Value 3", "Key 2": "Value 3", "Key 3": "Value 3" ]
print(dict1)


print(dict1["Key"]!)

dict1["Key"] = "ola Mundo"

print(dict1["Key"]!)


dict1["Nova Key"] = "ola Mundo"

print(dict1)

print(dict1["Nova Key"]!)

dict1["Nova Key"] = nil

print(dict1)

print("-- for --")
for (k ,v)  in dict1{
    
    print(k)
    print(v)
}


      
print("-- forEach --")
dict1.forEach { (k ,v)  in
    print(k)
    print(v)
}

      
print("-- removeValue --")
print(dict1.removeValue(forKey: "Key") ?? "Key Invalida")
print(dict1)


print("-- updateValue --")
//print(dict1.updateValue("foo", forKey: "Key 2222"))
print(dict1)

print("---")
//print(dict1.updateValue("boo", forKey: "Key 2222"))


/*
    let aux = dict[key]
    dict[key] = val
    return aux
 */
 
 
 
print(dict1)



print("------- Set --------")
// set



var set1:Set = ["Ovo", "Farinha", "sal", "Agua"]

print(set1)

let r = set1.insert("Azeite")

print(set1)
print(r)

let r2 = set1.insert("Azeite")

print(set1)
print(r2)

print(set1.remove("Agua")!)
print(set1)


var set2:Set<String>

set2 = ["Agua", "Farinha", "sal", "Fermento"]

print(set1.intersection(set2))
print(type(of: set1.intersection(set2)))




print(set1.union(set2))

print(set1.symmetricDifference(set2))

print(set1.subtracting(set2))
print(set2.subtracting(set1))


var set3:Set<String> = ["Ovo", "Farinha", "sal", "Agua", "Azeite"]

print("-----")
print(set1)
print(set2)
print(set3)


print("-----")

print(set1.isSubset(of: set3))
print(set2.isSubset(of: set3))

print("--")
print(set3.isSuperset(of: set1))
print(set3.isSuperset(of: set2))


set1.


