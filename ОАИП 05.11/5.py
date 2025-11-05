x = list(map(int, input().split()))
sov = []
proizv = 1
for n in x:
    deliteli = []
    for y in range(1, n):
        if n % y == 0:
            deliteli.append(y)
    summa = sum(deliteli)
    if summa == n:
        print(f'{n} совершенное')
        sov.append(n)
    else:
        print(f'{n} несовершенное')
    print(f'Делители {n} {deliteli}')
print(f'Совершеные числа {sov}')
for i in sov:
    proizv *= i
print(f'Произведение совершенных чисел {proizv}')
    