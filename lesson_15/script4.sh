#!/bin/bash
set -eu

echo -en "(1):multiplication\n(2):file_tree\n(3):text in a column\ntype:" # вступительный текст
read script_num # считываем номер скрипта, который нужно будет выполнить

case $script_num in
    1   )
        read -p "enter two numbers using space to separate: " numbers
        # получаем строку, в которой через пробел будут введены два числа, которые будем умножать

        numbers=($numbers)
        # создаём массив из двух чисел введённых выше

        script_path="$(dirname $0)/script1.sh"
        # $0 возвращает "путь_к_директории/script4.sh". с помощью команды dirname оставляем
        # просто путь к этой директории и, ожидая, что остальные скрипты будут в этой же
        # директории создаём путь к скрипту1. С остальными скриптами будет примерно также

        bash $script_path ${numbers[@]} # исполняем скрипт1 пораметрами которого будут значения из
                                        # массива, который мы получили выше
        ;;

    2   )
        bash "$(dirname $0)/script2.sh" # так как второму скрипту не нужно передавать никаких параметров,
                                        # то просто исполняем его
        ;;

    3   ) # в третьем скрипте почти нет отличий от первого
        read -p "enter some text: " text # получаем строку

        eval "text=($text)" 
        # я так до конца и не понял, как работает команда eval, но таким образом
        # у меня получается обрабатывать текст с кавычками. То есть, если я
        # запускаю скрипт3 отдельно, то он нормально обрабатывал кавычки, выбрасывая
        # их и выводя их содержимое в одну строку. А сейчас я столкнулся с проблемой,
        # что при создании массива из строки, в которой был текст в кавычках, разделением
        # элементов, которые вносятся в массив служит только пробел, а кавычки даже не 
        # выбрасываются из текста. А если засовывать в массив строку с помощью команды
        # eval, то почему-то и кавычки выбрасываются и все слова в них считаются за один
        # элемент.
        
        script_path="$(dirname $0)/script3.sh"

        bash $script_path "${text[@]}"  # в отличии от первоого скрипта, тут теперь
                                        # кавычки. почему с ними работает как надо, а без
                                        # них нет, я тоже не очень понял
        ;;

    *   ) echo "wrong script number, try again";;
esac