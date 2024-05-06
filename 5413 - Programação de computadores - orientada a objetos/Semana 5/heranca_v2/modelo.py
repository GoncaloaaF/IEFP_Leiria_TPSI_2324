class Pessoa:
    def __init__(self, nome: str, idade: int):
        self.__nome = nome # var pvt
        self.idade = idade


    def get_nome(self) -> str:
        return self.__nome

    def set_nome(self, nome: str):
        self.__nome = nome

    def __meto_pvt(self):
        print("metodo pvt")

    def _meto_protct(self):
        print("_meto_protct")

    def meto_n_pvt(self):
        print("metodo nao pvt")




class Aluno(Pessoa):
    def __init__(self, nome: str, idade: int, turma: str):
        super().__init__(nome, idade)
        self.__turma = turma

    def get_turma(self) -> str:
        return self.__turma

    def set_turma(self, turma: str):
        self.__turma = turma

    def teste(self):
        # super().__meto_pvt() # nao funciona pq __meto_pvt() é pvt
        super()._meto_protct()


