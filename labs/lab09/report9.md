---
## Front matter
title: "Отчёт по лабораторной работе №9"
subtitle: "дисциплина: Архитектура компьютера"
author: "Люкшина Влада Алексеевна"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
  - spelling=modern
  - babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# 1)Цель работы
Приобреcти навыки написания программ с использованием подпрограмм. Познакомиться
с методами отладки при помощи GDB и его основными возможностями.

# 2)Задание
Написать программы с использованием вызова подпрограммы, проанализировать их. Преобразовать программу из лабораторной работы №8.

# 3)Выполнение лабораторной работы
## 3.1) Создаем каталог для выполнения лабораторной работы № 9, переходим в него и создаем файл lab09-1.asm.
![Создаем каталог, переходим в него и создаем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/91.png)

## 3.2) Вводим в файл lab09-1.asm текст программы из листинга 9.1. Создаем исполняемый файл и проверяем его работу.
![Вводим текст, создаем файл и проверяем его работу](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/92.png)

## 3.3) Изменяем текст программы, добавив подпрограмму _subcalcul в подпрограмму _calcul.
![Изменяем текст программы](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/93.png)

## 3.4) Проверяем работу файла.
![Проверяем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/94.png)

## 3.5) Создаем файл lab09-2.asm с текстом программы из Листинга 9.2. 
![Создаем файл и вводим текст из листинга](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/95.png)

## 3.6) Получаем исполняемый файл. Для работы с GDB в исполняемый файл добавляем отладочную информацию, используя ключ -g.
![Получаем исполняемый файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/96.png)

## 3.7) Загружаем исполняемый файл в отладчик gdb.
![Загружаем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/97.png)

## 3.8) Проверяем работу программы, запустив ее в оболочке GDB с помощью команды run.
![Проверяем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/98.png)

## 3.9) Устанвливаем брейкпоинт на метку _start и запускаем программу.
![Устанавливаем брейкпоинт и запускаем программу](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/99.png)

## 3.10) Просматриваем дисассимилированный код программы с помощью команды disassemble начиная с метки _start.
![Просматриваем код](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/910.png)

## 3.11) Переключаемся на отображение команд с Intel’овским синтаксисом с помощью команды set disassembly-flavor intel.
![Переключаемся и смотрим программу](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/911.png)

Различия отображения синтаксиса машинных команд в режимах ATT и Intel:
1) В ATT синтаксисе обозначение регистра начинается с символа “%”. В Intel синтаксисе обозначение регистра может начинаться с символа “R” или “E”.
2) В ATT синтаксисе порядок операндов обратный, сначала указывается исходный операнд, а затем - результирующий операнд. В Intel синтаксисе порядок обычно прямой, результирующий операнд указывается первым, а исходный - вторым.
3) В ATT синтаксисе адреса указываются в круглых скобках. В Intel синтаксисе адреса указываются без скобок.
4) В ATT синтаксисе размер операнда указывается перед операндом с использованием префиксов, таких как “b” (byte). В Intel синтаксисе размер операнда указывается после операнда с использованием суффиксов, таких как “b”, “w”, “d” и “q”.
5) В ATT синтаксисе разделители операндов - запятые. В Intel синтаксисе разделители могут быть запятые или косые черты (/).

## 3.12) Включаем режим псевдографики для более удобного анализа программы.
![Включаем режим псевдографики](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/912.png)

## 3.13) Проверяем, установлена ли точка останова по имени метки(_start).
![Проверяем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/913.png)

## 3.14) Определяем адрес предпоследней инструкции (mov ebx,0x0) и устанавливаем точку останова.
![Устанавливаем точку останова](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/914.png)

## 3.15) Cмотрим информацию о всех установленных точках останова.
![Смотрим](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/915.png)

## 3.16) Выполняем 5 инструкций с помощью команды stepi (или si).
![Выполняем 5 инструкций](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/916.png)
Во время выполнения команд изменились регистры ebx, ecx, edx, eax, eip.

## 3.17) Cмотрим значение переменной msg1 по имени.
![Смотрим значение переменной](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/917.png)

## 3.18) Смотрим значение переменной msg2 по адресу.
![Смотрим значение переменной](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/918.png)

## 3.19) Изменяем первый символ переменной msg1.
![Изменяем символ](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/919.png)

## 3.20) Изменяем символ во второй переменной msg2.
![Изменяем символ](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/920.png)

## 3.21) Выводим в различных форматах значение регистра edx.
![Выводим значение](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/921.png)

## 3.22) С помощью команды set изменяем значение регистра ebx.
![Изменяем значение](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/922.png)
Команда без кавычек присваивает регистру вводимое значение, поэтому при выведении значения регистра мы получаем разные результаты.

## 3.23) Завершаем выполнение программы с помощью команды continue (сокращенно c) или stepi (сокращенно si) и выходим из GDB с помощью команды quit (сокращенно q).
![Завершаем выполнение программы](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/923.png)

## 3.24) Копируем файл lab8-2.asm в файл с именем lab09-3.asm.
![Копируем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/924.png)

## 3.25) Создаем исполняемый файл.
![Создаем исполняемый файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/925.png)

## 3.26) Загружаем исполняемый файл в отладчик, указав аргументы.
![Создаем исполняемый файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/926.png)

## 3.27) Устанавливаем точку останова перед первой инструкцией в программе и запускаем ее.
![Устанавливаем точку и запускаем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/927.png)

## 3.28) Просматриваем позиции стека по разным адресам.
![Просматриваем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/928.png)
Шаг изменения адреса равен 4 потому что адресные регистры имеют размерность 4 байта.

# 4) Самостоятельная работа
## 4.1) Копируем файл lab8-3.asm в файл lab09-4.asm
![Копируем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/929.png)

## 4.2) Изменяем файл, реализуя вычисления значения через подпрограмму(вариант 3, 10х-5)
![Изменяем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/930.png)

## 4.3) Создаем файл lab09-5.asm и записываем туда текст из листинга.
![Создаем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/931.png)

## 4.4) Создаем исполняемый файл и проверяем его работу.
![Проверяем. Программа работает неправильно](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/932.png)

## 4.5) Создаем исполняемый файл, запускаем его в отладчике GDB и ищем ошибку.
![Проверяем регистры](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/933.png)

## 4.6) Изменяем программу.
![Изменяем программу](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/934.png)

## 4.7) Создаем исполняемый файл и проверяем его работу.
![Проверяем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab09/images/935.png)

# 5)Выводы
Мы познакомились с методами отладки при помощи GDB и его возможностями.
