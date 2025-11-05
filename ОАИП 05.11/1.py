N = int(input())
P = 1

while N != 0: 
    a = N % 10
    P = P * a
    N = N // 10
print(P)