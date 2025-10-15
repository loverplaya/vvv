x1 = int(input())
y1 = int(input())
x2 = int(input())
y2 = int(input())
a1, b2 = 0, 0
if (x1 > 0) and (y1 > 0):
    a1 = 1
elif (x1 > 0) and (y1 < 0):
    a1 = 4
elif (x1 < 0) and (y1 > 0):
    a1 = 2
elif (x1 < 0) and (y1 < 0):
    a1 = 3
if (x2 > 0) and (y2 > 0):
        b2 = 1
elif (x2 > 0) and (y2 < 0):
        b2 = 4
elif (x2 < 0) and (y2 > 0):
        b2 = 2
elif (x2 < 0) and (y2 < 0):
        b2 = 3
if a1 == b2:
    print("в одной")
else:
    print("не в одной")

