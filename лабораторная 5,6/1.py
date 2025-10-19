import random
a = [random.randint(-52,65) for _ in range(20)]
ind = a.index(max(a))
positive = [x for x in a if x > 0]
minimal = min(positive)
min_ind = a.index(minimal)
kratnoe = [i for i in a if i % 5 == 0]
krat = kratnoe[-1]
ind_krat = a.index(krat)
print(a)

print(f'Наибольший элемент:{max(a)}, Номер наибольшего элемента:{ind}, Наименьший положительный элемент:{minimal}, Номер наименьшего:{min_ind}, Номер последнего элемента массива кратного 5:{ind_krat}')