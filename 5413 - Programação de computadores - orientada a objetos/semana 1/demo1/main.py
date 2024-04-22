
# nome = input("Qual o seu nome? ")
# print(nome)
# print(type(nome))

foo = """print(nome.upper())
print(nome.capitalize())

print(len(nome))
print(nome.__len__())

print("--" * 4)

nome = 10

print(nome)
print(type(nome))"""

"""
nome = input("Digite seu nome: ")
idade = input("Digite sua idade: ")

# "o {nome} tem {idade} anos"
print("--" * 4)

val = "--" * 4 # -> "--------"
val2 = 3 * 4



print(val)

print("O " + nome + " tem " + idade + " anos. em " + str(2024))
print("O %s tem %s anos." % (nome, idade))
print(f"O {nome} tem {idade} anos")

idade = 10
idade_str = str(idade)
idade_str2 = "10"
idade2 = int(idade_str2)
"""


"""
idade_str3 = "Dez"
idade3 = int(idade_str3)
"""
"""
val = True
val2 = False

print(bool(19))
print(bool(0))
print(bool(-0))
print(bool("0"))
print(bool(0.0000000000000000000000000000000000000000000000000000000000000000000001))
print(bool(""))


tup = (1, 2, 3)
print(tup[0])
print(tup[1])
print(tup[2])

v1 = 10
v2 = 10
v3 = 10

tup = (v1, v2, v3)
print(tup)
v1 = 10
tup = (v1, v2, v3)
print(tup)

print(v1)


v1 = 10 # 1
v2 = v1 # 12

print(id(tup[0]))
print(id(tup[1]))
print(id(tup[2]))

"""
"""
v1 = "10"
v2 = "10"
v3 = "10"

tup = (v1, v2, v3)

print(tup)
v1 = "15"
print(tup)

nome = "jOAO"
nome = nome.upper()
"""

"""
idade: int
idade = 10

idade = "Joao"

"""


# cond

idade = int(input("Digite sua idade: "))

if idade >= 18:
    print("Adulto")

elif idade > 15:
    print("Teen")

else:
    print("Criança")


letra = input("Digite uma letra: ")

if letra.upper() == "A" or letra.upper() == "B":
    print("Letra A ou b")
else:
    print("não Letra A nem b")



num = int(input("Digite um lado: "))

if num % 2 == 0 and num % 5 == 0:
    print("o num é par e div por 5")

print("The End")


# loops

for i in range(0, 10, 1):
    print(i)
