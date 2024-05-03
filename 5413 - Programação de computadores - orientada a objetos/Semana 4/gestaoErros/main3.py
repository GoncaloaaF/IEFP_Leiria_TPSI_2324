
def foo():
    try:
        erro = 1
        if erro == 1:
            raise ValueError("Erro no valor")
        else:
            raise IndexError("Erro no index")

    except ValueError as e:
        print(f"ValueError - Ocorreu um erro {e}")
    except IndexError as e:
        print(f"IndexError - Ocorreu um erro {e}")

    return ""





foo()

lista = [2,3,4]
lista.insert(99, 999)

print(lista)
lista[3] = 111
print(lista)