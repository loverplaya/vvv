import math

x = -11
endd = 6
while x <= endd + 1e-9:
    if x < -9:
        if x != 0:
            y = math.copysign(abs(x) ** (1/3), x) * (abs(x) ** (0.1 * x)) + (x ** 3) / math.log10(abs(x))
        else:
            y = 0
    elif -9 <= x < 1:
        if x > 0:
            y = (x ** 2) * math.log(x)
        else:
            y = 0
    elif 1 <= x < 4:
        y = math.exp(x) * (-x)
    else:
        y = math.log10(x) * math.sin(x)
    print(f"x = {x:6.2f}; y = {y:6.2f}")
    x += 0.2
