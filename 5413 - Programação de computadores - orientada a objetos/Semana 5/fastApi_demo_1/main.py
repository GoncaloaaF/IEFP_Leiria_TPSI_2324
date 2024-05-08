from fastapi import FastAPI
from modelos import *
app = FastAPI()
"""

REST 

get    -> ler dados
post   -> escrever dados
put    -> atualizar dados
delete -> remover dados


"""
@app.get("/")
async def root():
    return {"Ola": "Mundo"}

# teste?nome=goncalo
@app.get("/teste2")
async def teste(nome: str):
    return {"Ola": nome}

@app.get("/teste")
async def teste():
    return {"Ola": "Mundo teste"}


@app.get("/hello/{name}")
async def say_hello(name: str):
    return {"message": f"Hello {name}"}

@app.get("/hello/")
async def say_hello():
    return {"message": f"Hello Anonimo"}


@app.post("/addUser/")
async def add_usr(name: str):
    return {"message": name}


@app.post("/addAluno/")
async def add_aluno(aluno: Aluno):
    """

    descrição do metodo....

    :param aluno: Json com dados do aluno
    :return: Json com dados do aluno
    """
    aluno.saveData()
    return  aluno #{"nome": aluno.nome, "idade": aluno.idade}
