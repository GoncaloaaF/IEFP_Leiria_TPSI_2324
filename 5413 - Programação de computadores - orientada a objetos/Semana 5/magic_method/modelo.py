
from uuid import uuid4
from dataclasses import dataclass

@dataclass
class Nota:
    def __init__(self):
        self.id = 1
        self.valor = 1
        self.tipo = "Teste"

class Aluno:
    def __init__(self, nome, idade, notas = []):
        self.id =  3 #uuid4()
        self.nome = nome
        self.idade = idade
        self.notas = notas
        self.teste = [Nota(), Nota()]

    def get_info(self):
        return f'id: {self.id}\n{self.nome}, {self.idade}'


    def add_notas(self, other):
        if self == other:
            notas = self.notas
            notas.extend(other.notas)
            return Aluno(self.nome, self.idade, notas)

    def __eq__(self, other):
        return self.id == other.id


    def __add__(self, other):
        if self == other:
            notas = self.notas.copy()
            notas.extend(other.notas)
            return Aluno(self.nome, self.idade, notas)

    

