import random

a = [random.randint(-20, 10) for _ in range(20)]

def first_plus(nums):
    print(a)
    for i, x in enumerate(nums):
        if x > 0:
            print(f'Индекс первого положительного элемента {i}')
            return
    print(0)

first_plus(a)


def last_otr(nums):
    minim = a[0]
    minim_num = a[0]
    for i, x in enumerate(nums):
        if a[i] < 0:
            minim = x
            minim_num = i
    print(f'Последний отрицательный элемент: {minim}')
    print(F'Номер последнего отрицательного элемента {minim_num}')

last_otr(a)