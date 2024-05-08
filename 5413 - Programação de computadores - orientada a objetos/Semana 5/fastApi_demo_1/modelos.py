from pydantic import BaseModel


class CodigoPostal(BaseModel):
    cp: str
    localidade: str

class Morada(BaseModel):
    rua: str
    cp: CodigoPostal
    andar: str
    apt: str


class Contacto(BaseModel):
    telefone: str
    email: str

class EE(BaseModel):
    nome: str
    parentesco: str
    contacto: Contacto

class Aluno(BaseModel):
    nome: str
    idade: int
    telefone: Contacto
    turma: str
    morada: Morada
    ee: EE


    def saveData(self):
        print("os dados foram salvos")