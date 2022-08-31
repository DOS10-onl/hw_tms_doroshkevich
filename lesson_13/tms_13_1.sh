#!/bin/bash
# первый скрипт

if ! [ -d ~/myfolder ] # проверяем отсутствие директории myfolder
then
mkdir ~/myfolder # создаём директорию
fi


if [ $(ls ~/myfolder/ -A | wc -l) -gt 0 ]; then
rm ~/myfolder/* # очищаю папку myfolder если там что-то было
fi

# первый файл
echo "Hello!!" > ~/myfolder/file1
date >> ~/myfolder/file1

# второй файл
echo "file2" >> ~/myfolder/file2 # создал его не пустым, что бы в следующем скрипте он не удалялся как пустой
chmod 777 ~/myfolder/file2

# третий файл
# для рандомной генерации я использовал $ openssl rand
openssl rand -base64 200 > ~/myfolder/file3

# третий и четвёртый файлы
touch ~/myfolder/file4 ~/myfolder/file5
