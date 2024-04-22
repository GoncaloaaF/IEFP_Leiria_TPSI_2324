"""

var
tuplos
op var

if / else / elif
match

for
while

range

"""



"""

Funcs

"""

def nome():
    pass

def ola_mundo():
    print("Ola mundo")


ola_mundo()
ola_mundo()
ola_mundo()


def ola_mundo_2(nome: str):
    print(f"Ola mundo {nome.upper()}")

ola_mundo_2("Gonçalo")
#ola_mundo_2(1221)



def ola_mundo_3(nome: str, ano: int):
    print(f"Ola mundo {nome} em {ano}")


ola_mundo_3("Gonçalo", 2024)
ola_mundo_3("Joao", 2024)
ola_mundo_3(nome="Carlos", ano=2013)
ola_mundo_3(ano=2013, nome="Carlos")


def ola_mundo_4(nome: str, ano: int = 2002):
    print(f"Ola mundo {nome} em {ano}")


ola_mundo_4("Gonçalo")
ola_mundo_4("Rita", ano=2020)


def ola_mundo_5(nome: str, ano: int = 2002, local:str= "Lisboa"):
    print(f"Ola mundo {nome} no ano de {ano} em {local}")


ola_mundo_5(nome="Rui")


def ola_mundo_6(pram1: str = "p1",
                pram2: str = "p2",
                pram3: str = "p3",
                pram4: str = "p4",
                pram5: str = "p5"):

    print(f"{pram1}, {pram2}, {pram3}, {pram4}, {pram5} ")


ola_mundo_6()
ola_mundo_6(pram3="param 3", pram4="param 4")




def ola_mundo_7(nome: str):
   return f"Ola mundo {nome}"

print("--" * 10)

print(ola_mundo_7("nome"))

print("--" * 10)

out = ola_mundo_7("teste")
print(out)

