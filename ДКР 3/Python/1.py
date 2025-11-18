begin = None
endd = None
n = None

def f(x):
    return 2*x**3+(-1)*x**2+2*x+2

def vvod_predelov():
    begin = float(input("Начало интеграла: "))
    endd = float(input("Конец интеграла: "))
    n = int(input("Количество прямоугольников: "))
    return begin, endd, n


def metod_left(begin, endd, n):
    h = (endd - begin) / n
    s = 0
    x = begin
    for _ in range(n):
        s += f(x)
        x += h
    return s * h




while True:
    print("Меню")
    print("1. Ввести пределы интегрирования")
    print("2. Вычислить площадь фигуры")
    print("3. Оценка погрешности")
    print("4. Выход")

    choice = int(input())

    if choice == 1:
        begin, endd, n = vvod_predelov()
    
    elif choice == 2:
        if begin is None or endd is None:
            print("Не введены пределы интегрирования")
            begin, endd, n = vvod_predelov()
        else:
            result = metod_left(begin, endd, n)
            result = round(result, 3)
            print(f'Площадь фигуры: {result}')
    
    elif choice == 3:
        if begin is None or endd is None:
            print("Не введены пределы интегрирования")
            begin, endd, n = vvod_predelov()
        else:
            s1 = metod_left(begin, endd, n)
            s2 = metod_left(begin, endd, 2*n)
            error = abs(s2 - s1)
            error = round(error, 3)
            print(f'Погрешность: {error}')
            
    elif choice == 4:
        break
    else:
        print("Такого пункта нет")