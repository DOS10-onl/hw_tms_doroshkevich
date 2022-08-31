#!/bin/bash
# второй скрипт

# выводим количество файлов в myfolder
echo "total $(ls ~/myfolder/ -A | wc -l) files in myfolder"

# прохождение по всем файлам в папке по порядку
for x in $(ls ~/myfolder)
do

# если у файла права = 777, они меняются на 664
if [ $(stat -c %a ~/myfolder/$x) -eq 777 ]; then
chmod 664 ~/myfolder/$x
fi

# у всех файлов удаляются все строчки кроме первой
# но файл будет совсем пустым, даже без первой строчки
# то команда не выдаст ошибку, поэтому я не писал блок if
sed -i "1 ! d" ~/myfolder/$x

# если в файле 0 строчек (файл пустой), он удаляется
if [ $(wc ~/myfolder/$x | awk -F " " '{print $1}') -eq 0 ];
then
rm ~/myfolder/$x
fi

done
