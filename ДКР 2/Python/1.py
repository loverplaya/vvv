n = int(input('Введите длинну массива: '))
a = list(map(int, input().split())) [:n]
nums = set(a)
for x in set(a):
    count = a.count(x)
    print(f'Элемент {x}, Число повторений {count}')

