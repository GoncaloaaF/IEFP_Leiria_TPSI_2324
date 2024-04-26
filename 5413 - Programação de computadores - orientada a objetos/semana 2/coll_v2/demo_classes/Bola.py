
class Bola:
    nome:str
    idade:int

    def __init__(this, cor: str, material:str):
        this.nome = ""
        this.idade = 0
        this.cor = cor
        this.material = material

    def mostrar_cor(self):
        print(self.cor)


    def mudar_cor_material(myBola, cor, material):
        # self.cor = cor
        # self.material = material
        myBola.set_cor(cor)
        myBola.set_material(material)


    def get_cor(self) -> str:
        return self.cor

    def set_cor(self, cor):
        self.cor = cor


    def get_material(self) -> str:
        return self.material

    def set_material(self, material):
        self.material = material



