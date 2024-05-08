from dataclasses import dataclass
from uuid import uuid4
@dataclass
class User:
    id = uuid4()
    nome: str
    idade: int

@dataclass
class Gestor(User):
    nivel: int

    def __init__(self, nome: str, idade: int, nivel:int):
        self.nivel = nivel
        super().__init__(nome, idade)


    def set_nome(self, nome):
        super().nome = nome


@dataclass
class Stand:
    lista_Gestores: list[Gestor]
    lista_Clientes: list[User]

    def __init__(self, lista_gestores = []):
        self.lista_Gestores = lista_gestores


    def addGestor(self, nome, idade, nivel):
        self.lista_Gestores.append(Gestor(nome, idade, nivel))

    def addGestor(self, nome, idade):
        self.lista_Clientes.append(User(nome, idade))
