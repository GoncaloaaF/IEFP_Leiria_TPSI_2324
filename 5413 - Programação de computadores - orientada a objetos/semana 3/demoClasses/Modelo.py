from dataclasses import dataclass



@dataclass
class CodigoPostal:

    lista = {"PT": "-", "UK": " "}

    cp1: str
    cp2: str
    pais: str

    def __str__(self):
        sep = self.lista[self.pais.upper()]
        return f"{self.cp1}{sep}{self.cp2}"


@dataclass
class Morada:
    lista = {"PT": "-", "UK": " "}


    rua: str
    andar: int
    porta: str
    cp: CodigoPostal
    cidade: str
    pais: str

    def __init__(self,
                 rua: str,
                 andar: int,
                 porta: str,
                 cp: str ,
                 cidade: str,
                 pais: str):

        self.rua = rua
        self.andar = andar
        self.porta = porta
        self.cidade = cidade
        self.pais = pais
        self.cp = self.get_cp(cp, self.pais)


    def get_cp(self, cp:str, pais: str) -> CodigoPostal:
        if type(cp) is CodigoPostal:
            return cp

        sep = self.lista[self.pais.upper()]
        cp = cp.split(sep)

        return CodigoPostal(cp[0], cp[1], pais)



@dataclass
class Telefone:
    lista = {"PT": "+351", "UK": "+44"}

    pais: str
    num: int

    def __str__(self):
        indicativo = self.lista[self.pais.upper()]
        return f"{indicativo} {self.num}"



@dataclass
class Contacto:
    id: int
    nome: str
    email: str
    telefone: Telefone
    morada: Morada



