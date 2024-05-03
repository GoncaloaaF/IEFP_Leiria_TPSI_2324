lista = [1,2,3,4]


try:
    i = 27
    print(lista[i])
except IndexError as e:
    print(f"Ocorreu um erro {e}")
else:
    print(f"tudo ok")
finally:
    print("condigo continua no finally")



print("\n\ncondigo continua")