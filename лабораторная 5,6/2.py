import random
from collections import Counter


a = [random.randint(0,20) for _ in range(20)]

most = Counter(a).most_common(1)[0]
print(a)
print(f'Наиболее повторяющееся число: {Counter(a).most_common(1)[0][0]}')
