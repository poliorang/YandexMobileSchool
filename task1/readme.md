# A. Самая сложная буква

Василий решил улучшить скорость печати. Он заметил, что некоторые букы на клавиатуре от ищет дольше, чем дургие. Ему интересно, какую букву он искал дольше всего. Напишите программу, которая поможет Василию узнать это.  

Василий ввел N букв.  

Строка S - строка, введенная Василием, имеет длину N.  

Массив А содержит N целых неотрицательных чисел, каждое число A[i] - время в миллисекундах от начала ввода до того как была напечатана i-тая буква.  

Считается, что Василий начал искать следующую букву сразу после того, как напечатал преыдущую. Букву с индексом 0 он искал A[0] миллисекунд.  

  
## Формат ввода
В первой строке входных данных находится N. N - количество введенных букв.

Во второй строке находится S. S – введенная строка, состоящая из N букв. В третьей строке находится A – N целых неотрицательных чисел через пробел.


## Формат вывода
Выведите букву, которую Василий искал дольше всего. Если букв с одинаковым временем поиска несколько, выведите ту, что он напечатал последней.

### Пример 1

| Ввод | Вывод |
|----------------|:---------:|
| 3
adc
1 5 7 | d |

### Пример 2

| Ввод | Вывод |
|----------------|:---------:|
| 3
abc
10 11 12 | a |

### Пример 3

| Ввод | Вывод |
|----------------|:---------:|
| 4
bcda
1 2 4 6 | a |

### Пример 4

| Ввод | Вывод |
|----------------|:---------:|
| 5
aabbc
1 3 5 7 8 | b |
