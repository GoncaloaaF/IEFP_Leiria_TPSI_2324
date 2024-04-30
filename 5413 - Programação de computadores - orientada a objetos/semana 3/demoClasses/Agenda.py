from Modelo import *

class AgendaContacto:

    def __init__(self, nome_agenda: str):
        self.nome = nome_agenda
        self.lista_contatos = []
        # grupos de contactos
        #  self.grupos_contactos = [] <- ??

    def novo_contacto(self):
        pass


    def lista_contatos(self) -> list:
        pass


    def atualiza_contacto(self, contacto: Contacto):
        pass


    def remover_contacto(self, contacto_id: int):
        pass


    def find_contacto(self, contacto_nome = None, pais = None ) -> list:
        if contacto_nome is not None:
            pass




