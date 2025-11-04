string = input()
delete_string = input()
ind = []

for i in range(len(string)-len(delete_string) + 1):
    find = True
    for j in range(len(delete_string)):
        if string[i + j] != delete_string[j]:
            find = False
            break
    else:
        ind.append(i)
            
first = ind[0]
last = ind[-1]
result = (string[:first] + string[first + len(delete_string):last] + string[last + len(delete_string):])
print(result)

