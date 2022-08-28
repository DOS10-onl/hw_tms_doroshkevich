#!/bin/bash

# создаю пустой файл в домашней директории
touch ~/testfile.txt

echo "$(date)" # на выводе текущие дата и время
echo '$(date)' # на выводе $(date)
echo `$(date)` # на выводе ошибка
echo `date` # если убрать доллар и скобки, строка выше работает нормально

# присваиваю значения переменным
str="text"
comm=`pwd`
let "math = 7**2"

# пишу значения переменных в файл
echo $str >> ~/testfile.txt
echo $comm >> ~/testfile.txt
echo $math >> ~/testfile.txt
