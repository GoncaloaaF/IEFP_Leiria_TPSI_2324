
stat = 0
max = 1
step = 2

for i in range(stat, max, step):
    print(i)


nota = 4

match nota:
    case 1:
        print('muito mau')
    case 2:
        print("mau")
    case 3:
        print("ok")
    case 4:
        print("bom")
    case 5:
        print("Mt bom")
    case _:
        print("Nota invalida")

print("--" * 10)



i = 10

while i > 0:
    print(i)
    i -= 1


