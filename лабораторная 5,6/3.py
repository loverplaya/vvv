import random


a = [random.randint(-5,10) for _ in range(20)]
print(a)
for i, num in enumerate(a):
    if num > 0:
        b = num
        print(b)
        del a[i]
        break
minimal = min(a)
print(minimal)
a.remove(minimal)


print(a)