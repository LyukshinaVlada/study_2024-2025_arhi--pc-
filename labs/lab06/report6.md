---
## Front matter
title: "Отчёт по лабораторной работе №6"
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

Освоение арифметических инструкций языка ассемблера NASM.

# 2)Задание
Написать программы для вычисления арифметических выражений.

# 3)Выполнение лабораторной работы
## 3.1) Создаем каталог для программ лабораторной работы № 6, переходим в него и создайем файл lab6-1.asm
    
![Создаем файл и каталог](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/images/61.png)
    
## 3.2) Вводим в файл lab6-1.asm текст программы из листинга 6.1.
![Вводим текст](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/images/62.png)
    
## 3.3) Создаем файл и запускаем его.
    
![Создаем файл и запускаем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/images/63.png)
    
## 3.4) Изменяем текст программы и вместо символов записываем в регистры числа.
![Изменяем текст](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/images/64.png)

## 3.5) Создаем исполняемый файл и запускаем его
![Запускаем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/images/65.png)

## 3.6) Создаем файл lab6-2.asm в каталоге ~/work/arch-pc/lab06.
![Создаем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/images/66.png)

## 3.7) Вводим в него текст программы из листинга 6.2.
![Вводим текст](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/images/67.png)

## 3.8) Создаем исполняемый файл и запускаем его.
![Создаем и запускаем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/images/68.png)

## 3.9) Аналогично предыдущему примеру изменяем символы на числа.
![Редактируем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/images/69.png)

## 3.10) Создаем исполняемый файл и запускаем его.
![Создаем и запускаем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/images/610.png)

## 3.11) Заменяем функцию iprintLF на iprint. 
![Редактируем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/images/611.png)

## 3.12) Создаем исполняемый файл и запускаем его.
![Создаем и запускаем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/images/612.png)

## 3.13) Создаем файл lab6-3.asm в каталоге ~/work/arch-pc/lab06.
![Создаем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/images/613.png)

## 3.14) Вводим в lab6-3.asm текст из листинга 6.3.
![Вводим текст](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/images/614.png)

## 3.15) Создаем исполняемый файл и запускаем его.
![Создаем и запускаем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/images/615.png)

## 3.16) Изменяем текст программы для вычисления выражения.
![Редактируем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/images/616.png)

## 3.17) Создаем исполняемый файл и проверяем его работу.
![Создаем и проверяем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/images/617.png)

## 3.18) Создаем файл variant.asm в каталоге ~/work/arch-pc/lab06
![Создаем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/images/618.png)

## 3.19) Вводим текст из листинга 6.4 в файл variant.asm.
![Вводим текст](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/images/619.png)

## 3.20) Создаем исполняемый файл и запускаем его.
![Создаем и запускаем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/images/620.png)

## 3.21) Ответы на вопросы
1. За вывод на экран сообщения ‘Ваш вариант:’ отвечают строки “mov eax,rem” и “call sprint”.
2. Эти инструкции используются для чтения строки с вводом данных от пользователя. Начальный адрес строки сохраняется в регистре ecx, а количество символов в строке сохраняется в регистре edx. После этого вызывается команда sread, которая производит чтение строки.
3. Инструкция “call atoi” используется для преобразования строки в целое число.
4. За вычисление варианта отвечают строки “xor edx,edx”, “mov ebx,20” и “div ebx”. Строка “xor edx,edx: обнуляет регистр edx перед выполнением деления. Строка “mov ebx,20”: загружает значение 20 в регистр ebx. Строка “div ebx”: выполняет деление регистра eax на значение регистра ebx с сохранением частного в регистре eax и остатка в регистре edx.
5. Остаток от деления при выполнении инструкции “div ebx” записывается в регистр edx.
6. Инструкция “inc edx” используется для увеличения значения в регистре edx на 1.
7. За вывод на экран результата вычислений отвечают строки “mov eax,edx” и “call iprintLF”. “mov eax,edx” передает значение остатка от деления в регистр eax, а “call iprintLF” вызывает процедуру iprintLF для вывода значения на экран вместе с переводом строки.

# 4) Самостоятельная работа
## 4.1) Создаем файл в каталоге
![Создаем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/images/621.png)

## 4.2) Пишем программу для вычисления варианта №3 (x + 2)^2
![Пишем программу](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/images/622.png)

## 4.3) Создаем файл и запускаем его
![Создаем файл и запускаем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab06/images/623.png)

# 5)Выводы
Мы научились писать программы для произведения рассчетов на языке NASM.

