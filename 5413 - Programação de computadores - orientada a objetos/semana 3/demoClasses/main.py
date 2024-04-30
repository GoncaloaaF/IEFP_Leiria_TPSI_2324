from Modelo import *

m = CodigoPostal("1231", "313", "PT")
print(m)


m = CodigoPostal("AB1", "AA0", "UK")
print(m)


tlm = Telefone("PT", 1231434112)
print(tlm)

tlm = Telefone("UK", 1231434112)
print(tlm)


"""
class Morada:
    rua: str
    andar: int
    porta: str
    cp: CodigoPostal
    cidade: str
    pais: str
"""
adr = Morada("rua",
             7,
             "7b",
             CodigoPostal("1234", "134", "PT"),
             "Lisboa",
             "PT"
             )
print(adr)

adr = Morada("rua",
             7,
             "7b",
             m,
             "Lisboa",
             "PT"
             )
print(adr)