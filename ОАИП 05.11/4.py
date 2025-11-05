N = int(input())
i = 1
k = 0
while i <= N:
    x = 1
    c = 0
    y = int(input())
    while x <= y:
        if y % x == 0:
            c = c + 1
        x = x + 1
    if c == 2:
        k = k + 1
    i = i + 1
print(k)