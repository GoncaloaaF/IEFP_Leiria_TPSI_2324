
import time
import os

#List

alunos = ["Joao", "Pedro", "Maria", "Joao"]

print(alunos)
print(alunos[0])
print(alunos[1])
print(alunos[2])
print(alunos[3])
print("--"*10)

print(alunos[0])
alunos[0] = "Carlos"
print(alunos[0])

print("--"*10)
print("--"*10)
def teste(t:int):
    t *= 2

x = 10
teste(x)
print(x)

print("--"*10)
print("--"*10)

print(alunos[0])
def teste2(noveNome:str, pos:int, lista:list):
    lista[pos] = noveNome

teste2(noveNome="Ricardo", pos=0, lista=alunos)

print(alunos[0])


print(alunos.__len__())
print(len(alunos))

print(alunos)
alunos.append("Maria Rita")

print(alunos.__len__())

print(alunos)

alunos.insert(0, "Novo Aluno")

"""

["Novo Aluno" ,'Ricardo', 'Pedro', 'Maria', 'Joao' ,'Maria Rita']


"""
"""
print(alunos)
print("--"*10)
print("--"*10)

st = time.time()

lista = ["teste"]
for i in range(200_000):
   #lista.append("foo")
   lista.insert(0, "foo")

#time.sleep(1)
ft = time.time()

"""


"""

20k
fim 
0.0012972354888916016
0.0016088485717773438
0.001413106918334961

inicio
0.04414176940917969
0.03805065155029297
0.0387117862701416


200k
end
0.010059833526611328
0.010059833526611328


start
4.795382738113403
4.678952932357788

"""

"""
print(ft-st)

print("--"*10)
print("--"*10)

"""

contador = 0
st = time.time()
while True:
    contador += 1

    if time.time()-st == 1:
        break


print(contador)

"""
6_412_765
6_495_169

c++
14_602_435


Rust
23_817_661
23_194_283
"""


my_list = [1, "txt", True]

print("--" * 10)

print(alunos)

alunos.remove("Maria")

print(alunos)

foo = alunos.pop(0)
print(foo)

del alunos[0]

print(alunos)

# alunos.clear()

print(alunos)

alunos.append("Maria Rita")
alunos.append("Maria Rita")
alunos.append("Maria Rita")

c = alunos.count("Joao")
print(c)

for elm in alunos:
    print(elm)


for i in range(alunos.__len__()):
    print(i)


for l in "my Txt":
    print(l)


# acesso a lista V2
nomes = [
    "Garibel", "Sophia", "LUCAS", "Isabella", "Matheus", "Mariana", "Pedro", "Beatriz", "Rafael", "Larissa",
    "Gustavo", "Julia", "Felipe", "Camila", "Vinicius", "Ana", "João", "Carolina", "Leonardo", "Manuela",
    "Luiz", "Leticia", "Diego", "Amanda", "Enzo", "Natália", "Lucas", "Isabel", "Guilherme", "Fernanda",
    "Mateus", "Bianca", "Arthur", "Helena", "Thiago", "Laura", "Daniel", "Lorena", "Carlos", "Vitória",
    "Marcelo", "Emily", "Ricardo", "Mariana", "José", "Clara", "André", "Sophie", "Paulo", "Eduarda"
]

print("--"*10)
print("--"*10)

print(nomes[0])
print(nomes[-1])

print("--"*10)
print("--"*10)

print(nomes[0:10])

print("--"*10)
print("--"*10)

print(nomes[3:10:2])

print("--"*10)
print("--"*10)

print(nomes[::-1])

print("--"*10)
print("--"*10)

print(nomes[30:25:-1])

print("--"*10)
print("--"*10)
print(nomes[0:25:100])

print("--"*10)
print("--"*10)

# List Comprehension

# newlist = [expression for item in iterable if condition == True]

n = [n.isupper() for n in nomes if n.__len__() == 5]

print(n)

print("--"*10)
print("--"*10)




nomes.sort(reverse=True)



#def my_sort(elm):
#    return elm.__len__()


"""
def my_sort(elm):
    if elm.__len__() == 4:
        return  elm.__len__() * 5
    return  elm.__len__()

nomes.sort(key=my_sort)



"""

foo.__len__()

len(foo)


def my_sort(elm):
    if elm.__len__() == 4:
        return elm[2]
    return elm[1]

nomes.sort(key=my_sort)



print(nomes)

print("end")





#set










#Dict


