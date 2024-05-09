import sqlite3
from faker import Faker
import random


conn = sqlite3.connect("Alunos.db")

c = conn.cursor()
try:
    c.execute("""CREATE TABLE Alunos (
    id integer PRIMARY KEY,
    nome varchar(50),
    idade integer
    )""")


except sqlite3.OperationalError:
    print("A tabela de Alunos ja existe")

try:
    fake = Faker(["pt_PT"])
    for i in range(10):
        name = fake.name()
        idade = random.randint(18, 50)
        c.execute(f"""INSERT INTO Alunos
                  (id, nome, idade)
                   VALUES ({i}, '{name}', {idade})""")

except sqlite3.IntegrityError:
    print("index duplicado ")



c.execute("""SELECT * FROM Alunos""")

dados = c.fetchone()
print(type(dados))
print(dados)

# 0,Valentim Ramos-Reis,46

dados = c.fetchone()
print(type(dados))
print(dados)

"""
1,Brian Lopes,46
"""
print("--" * 10)

dados = c.fetchmany(3)
print(type(dados))
print(dados[0])
print(dados)


d = c.fetchall()

#for i in d:
#   print(i)

conn.commit()

conn.close()


"""
129ms

61ms

49ms

"""