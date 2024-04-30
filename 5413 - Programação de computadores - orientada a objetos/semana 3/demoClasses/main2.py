from Modelo import Morada, CodigoPostal


adr = Morada("rua",
             7,
             "7b",
             "AB1 A00",
             "Lisboa",
             "UK"
             )

print(adr)

print(type(adr) is CodigoPostal)


adr.novaPorp = "10"
print(adr.novaPorp)


print(dir(adr))