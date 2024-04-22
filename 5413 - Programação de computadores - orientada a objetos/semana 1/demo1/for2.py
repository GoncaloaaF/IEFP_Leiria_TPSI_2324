

for i in range(1, 99):
    if i % 2 == 0:
        if i % 15 == 0:
            break

        continue

    print(i)