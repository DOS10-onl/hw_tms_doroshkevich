#!/bin/bash
set -eu

myf() {

    arr=$1 # присваиваю переданные значения массиву

    for item in "${!arr[@]}"; do    # для каждого индекса массива:

        echo ${arr[$item]}          # выводится соответствующий ему элемент
    done
}

if [ $# -eq 0 ]; then
    exit 1
fi
# проверка количества переданных скрипту параметров. Что бы не возникло
# ошибки, если было передано 0 параметров, то он завершится

param_count=$# 
# присвоил переменной переданное скрипту количество параметров
# потому что $# может меняться во время выполнения скрипта и всё сломать

arr=() # создал пустой массив, в который буду добавлять элементы по одному

for ((i=0;i<param_count;i++)); do

    arr[i]=$1; shift    # shift -- смещение передаваемых значений влево. То есть
                        # $2 станет $1, $3 станет $2 и тд. Использую что бы 
                        # в цикле добавлять в массив передаваемые значения
                        # таким образом можно передать в массив любое любое количество значений
    
done

myf "${arr[@]}"     # в качестве параметра функции передаю все значения массива