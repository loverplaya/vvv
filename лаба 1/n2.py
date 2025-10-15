an = int(input())
p = (an - 1) // 36 + 1
f = (an % 36 - 1) // 4 + 1
print("Подъезд", p, "Этаж", f)