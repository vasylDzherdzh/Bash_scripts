#!/bin/bash

# Вказуємо шлях до файлу з логами
LOG_FILE="./Apache_2.4-PHP_5.5-5.6_queriesa.log"

# Знаходимо кількість повідомлень про помилку 404
COUNT=$(grep -c 'HTTP/1.1" 404' $LOG_FILE)
echo "Кількість повідомлень про помилку 404: $COUNT"

# Виводимо всі повідомлення про помилку 404
echo "Повідомлення про помилку 404:"
grep 'HTTP/1.1" 404' $LOG_FILE
