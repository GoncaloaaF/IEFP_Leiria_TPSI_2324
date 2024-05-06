

class Animal:
    def __init__(self, nome: str,
                 idade: int,
                 peso: float,
                 altura: int,
                 vida_max: int):
        """

        :param nome: nome do animal
        :param idade: idade do animal
        :param peso: peso do animal em Kg
        :param altura: altura do animal em cm
        :param cor: cor do animal
        :param vida_max: idade maxima do animal

        """
        self.nome = nome
        self.idade = idade
        self.peso = peso
        self.altura = altura
        self.vida_max = vida_max

    def envelhecer(self,
                   anos:int = 1):

        """
         Por padrão, a cada ano o nosso animal envelhece,
         sendo a idade dela menor que 21 anos, ela deve crescer 1 cm.

        :param anos: anos a envelhecer, valor pre definido = 1
        :return: None
        """

        self.idade += anos
        if self.idade < 21:
            self.altura += 5

    def get_info(self):
        print(f"{self.nome} get_info Animal")



class Pessoa(Animal):

    def __init__(self,nome: str,
                 idade: int,
                 peso: float,
                 altura: int,
                 vida_max: int,
                 roupa: str):

        super().__init__(nome, idade, peso, altura, vida_max)

        self.roupa = roupa

    def engordar(self):
        print("engordar")


    def get_info(self):
        print(f"{self.nome} get_info Pessoa")


class Cao(Animal):
    def __init__(self, nome: str,
                 idade: int,
                 peso: float,
                 altura: int,
                 vida_max: int,
                 cor: str):
        super().__init__(nome, idade, peso, altura, vida_max)

        self.cor = cor

class Cavalo(Animal):
    def __init__(self, nome: str,
                 idade: int,
                 peso: float,
                 altura: int,
                 vida_max: int,
                 cor: str):
        super().__init__(nome, idade, peso, altura, vida_max)

        self.cor = cor

    def get_info(self):
        print(f"{self.nome} get_info Cavalo")