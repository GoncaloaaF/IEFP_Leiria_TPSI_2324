from modelo import Pessoa, Cao, Cavalo, Animal


p = Pessoa("Carlos", 30, 78, 185, 85, "Formal")
c = Cao("Boby", 30, 78, 185, 85, "amarelo")
cv = Cavalo("Portugal", 30, 78, 185, 85, "Castenho")



p.get_info()
c.get_info()
cv.get_info()

print("---" * 4)
print(isinstance(p, Pessoa))
print(type(p) == Pessoa)


print("---" * 4)

print(isinstance(p, Pessoa)) # p <- Pessoa
print(isinstance(p, Animal)) # p <- Pessoa <- Animal

print(type(p) == Animal) # p <- Pessoa

print("---" * 4)


print(isinstance(c, Pessoa)) # c <- Cao <- Animal