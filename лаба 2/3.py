import math
n,R,R1,R2=int(input()),int(input()),int(input()),int(input())

for i in range(n):
    x,y= map(int, input().split())
    coord = math.sqrt(x**2 + y**2)
    if coord <=R:
        print(coord, "Входит")
    else:
        print(coord,"Не входит")
