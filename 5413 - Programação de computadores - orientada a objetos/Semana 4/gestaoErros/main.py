import time as t
lista = [1,2,3,4]


ti = t.time()
try:
    i = 5
    print(lista[i])
    t.sleep(1)
except IndexError as e:
    print(f"Ocorreu um erro {e}")
tf = t.time()



delta = tf-ti

print(f"try: {delta}")





ti = t.time()

i = 5
if lista.__len__() > i:
    print(lista[i])
    t.sleep(1)
else:
    print("Ocorreu um erro")
tf = t.time()

delta = tf-ti

print(f"if: {delta}")



print("condigo continua")


"""
try: 0.000012159347534179688
Ocorreu um erro
if: 0.0000026226043701171875
condigo continua

try: 0.000012159347534179688
if:  0.000002622604370117187
"""