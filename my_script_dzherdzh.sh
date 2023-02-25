#!/bin/bash

# Створюємо каталоги та підкаталоги
mkdir -p my_project/student_info
mkdir -p my_project/other_files

# Створюємо файли з вказаними даними
echo "Василь" > my_project/student_info/name.txt
echo "Джердж" > my_project/student_info/surname.txt
echo "Група: КІ-412" > my_project/student_info/info.txt
echo "Дата виконання: 15:01 25.02.2023" >> my_project/student_info/info.txt
echo "Email: vasya.dzhierdzh@gmail.com" >> my_project/student_info/info.txt

echo "Всі файли успішно створені."

# Копіюємо файли з підкаталогів в кореневий каталог
cp my_project/student_info/* my_project/other_files/
echo "Всі файли успішно скопійовані."

# Перевірка електронної пошти у файлі з регулярним виразом
grep -Eo '[\w\.-]+@[\w\.-]+\.[\w]{2,4}' my_project/student_info/info.txt | grep -q vasya.dzhierdzh@gmail.com && echo "Поштова скринька незнайлена." || echo "Поштова скринька знайдена."
