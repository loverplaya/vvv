import math

x = -11
endd = 6

while x <= endd:
    try:
        if x < -9:
            y = (x ** (1/3)) * (x ** (0.1 * x)) + (x ** 3) / math.log10(x)
        elif x >= -9 and x < 1:
            y = (x ** 2) * math.log(x)
        elif x >= 1 and x < 4:
            y = (math.e ** x) * (-x)
        elif x >= 4:
            y = math.log10(x) * math.sin(x)
        print(f"x = {x:.2f}; y = {y:.2f}")
    except ValueError:
        print(f"x = {x:.2f}; y = не определено")
    x += 0.2
