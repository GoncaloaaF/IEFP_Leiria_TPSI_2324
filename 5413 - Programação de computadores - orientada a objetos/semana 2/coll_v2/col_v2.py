"""

list  <-  []

set  <-  {}

dict = { : }

"""


# Set - Conjuntos
import time


"""
s1 = {1,2,3,4,5}

print(s1)

for i in s1: # <- ok/nao ok
    print(i)

s1.add(6)
print(s1)

s1.add(6) # <- ok
print(s1)


s3 = {0}

"""

"""
print(s3.__contains__(0)) # <- ok

st = time.time()

for i in range(1,100_000_000):
    s3.add(i)
    
delta = time.time()-st
print()
print(delta)
"""

"""

A
0.00000095367431640625      8
0.00000095367431640625      
0.0000011920928955078125    10_000
0.0000021457672119140625    1_000_001
0.0000040531158447265625    10_000_001
0.000047206878662109375
B

"""


s1 = {1,2,3,4,5}
print(s1)



v2 = s1.discard(3) # <- ok


print(v2)
#s1.pop() <- nao faz sentido

print(s1)
# print(s1[0])
s1.__contains__(6)

foo = {'orange', 'apple', 'pear', 'banana', 'kiwi', 'apple', 'banana'}

"""
{'apple', 'orange', 'pear', 'banana', 'kiwi'}
{'apple', 'kiwi', 'pear', 'orange', 'banana'}
{'pear', 'banana', 'kiwi', 'orange', 'apple'}

"""

s1 = {1,2,3,4,5}

print(s1)

s1 = {'pear', 'banana', 'kiwi', 'orange', 'apple'}
s2 = {'pear', 'orange', 'apple', 'figo', 'nespra'}

print(s1.intersection(s2))
print(s1.union(s2))
print(s1.difference(s2))
print(s2.difference(s1))
print(s1.symmetric_difference(s2))
print(s1.difference(s2))
s1.difference_update(s2)
print(s1)

s1 = {'pear', 'orange'}
s2 = {'pear', 'orange', 'apple', 'figo', 'nespra'}


print(s2.issubset(s1))

print("--" * 10)
# dict

my_dict = {"key1": "Value1",
     "key2": "Value2",
     "key3": "Value3"}

print(my_dict)
print(my_dict.keys())
print(my_dict.values())
print(my_dict.items())

for d in my_dict.items():
    print(d)


print(my_dict["key1"])
print(my_dict.get("key8"))


my_dict["key1"] = "novo Valor"
print(my_dict["key1"])

my_dict["key8"] = "novo Valor"
print(my_dict["key8"])



my_dict.update({"key1": "novo Valor 2"})
print(my_dict["key1"])

my_dict.update({"key99": "novo Valor 2"})
print(my_dict["key99"])

print(my_dict)
valor = my_dict.pop("key99")
print(valor)
print(my_dict)


print(my_dict)
del my_dict["key2"]

print(my_dict)


my_dict.clear()
print(my_dict)


"""
{
  "userId": 1,
  "id": 1,
  "title": "delectus aut autem",
  "completed": false
}

{
 "usr1": {
    "id": 1,
    "name": "Leanne Graham",
    "username": "Bret",
    "email": "Sincere@april.biz",
    "address": {
      "street": "Kulas Light",
      "suite": "Apt. 556",
      "city": "Gwenborough",
      "zipcode": "92998-3874",
      "geo": {
        "lat": "-37.3159",
        "lng": "81.1496"
      }
    },
    "phone": "1-770-736-8031 x56442",
    "website": "hildegard.org",
    "company": {
      "name": "Romaguera-Crona",
      "catchPhrase": "Multi-layered client-server neural-net",
      "bs": "harness real-time e-markets"
    }
  },
   "usr2": {
    "id": 2,
    "name": "Ervin Howell",
    "username": "Antonette",
    "email": "Shanna@melissa.tv",
    "address": {
      "street": "Victor Plains",
      "suite": "Suite 879",
      "city": "Wisokyburgh",
      "zipcode": "90566-7771",
      "geo": {
        "lat": "-43.9509",
        "lng": "-34.4618"
      }
    },
    "phone": "010-692-6593 x09125",
    "website": "anastasia.net",
    "company": {
      "name": "Deckow-Crist",
      "catchPhrase": "Proactive didactic contingency",
      "bs": "synergize scalable supply-chains"
    }
  }
}
  

"""