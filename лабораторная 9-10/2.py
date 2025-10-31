import random

a = [[random.randint(0, 50) for _ in range(8)] for _ in range(8)]

minim_list = []

for row in a:
    print(row)

def task2(nums):
    for row in nums:
        minim = row[0]
        for x in row:
            if x < minim:
                minim = x
        print(f'Минимальный элемент:  {minim}')
        minim_list.append(minim)

    avg = sum(minim_list)/len(minim_list)
    avg = round(avg)

    print('Одномерный массив',minim_list)
    print('Среднее арифметическое',avg)

task2(a)