from modelo import Pessoa, Cao


p = Pessoa("Carlos", 30, 78, 185, 85, "Formal")
print(p.roupa)


c = Cao("Boby", 30, 78, 185, 85, "amarelo")
print(c.cor)


print("---" * 4, "Pessoa", "---" * 4)
print(p.idade)
print(p.altura)

p.envelhecer()
print("---")

print(p.idade)
print(p.altura)

print("---" * 4)


print("---" * 4, "Cao", "---" * 4)
print(c.idade)
print(c.altura)

c.envelhecer(3)
print("---")

print(c.idade)
print(c.altura)

print("---" * 4)