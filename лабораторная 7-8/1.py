str = str(input())
if len(str) > 6:
    char = str[0:3]
    last_char = str[-3:]
    print('Первые 3 буквы:',char)
    print('Последние 3 буквы:',last_char)
else:
    for i in range(len(str)):
        char = str[0]
        print(char)
