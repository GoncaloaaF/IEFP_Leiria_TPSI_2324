from modelo import Aluno


a =  Aluno("Carlos", 30)
a1 = Aluno("Carlos", 30, [1,2,3])

print(a == a1)


a3 = a + a1
a.add_notas(a1)


print(a3.notas)

print(a.notas)

a3.notas.append(342)

print(a.notas)


print(a.__dict__)

"""
{
'id': 3, 
'nome': 'Carlos', 
'idade': 30, 
'notas': [1, 2, 3]
}

"""


"""

{'id': 3, 
'nome': 'Carlos', 
'idade': 30, 
'notas': [1, 2, 3], 
'teste': [
<modelo.Nota object at 0x1084cf210>, 
<modelo.Nota object at 0x1084f3a90>]

}

"""