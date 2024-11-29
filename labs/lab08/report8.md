---
## Front matter
title: "Отчёт по лабораторной работе №8"
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
Приобретение навыков написания программ с использованием циклов и обработкой
аргументов командной строки.

# 2)Задание
Написать программы с использованием циклов и обработкой аргументов командной строки.

# 3)Выполнение лабораторной работы
## 3.1) Создаем каталог для программ лабораторной работы № 8, переходим в него и создаем файл lab8-1.asm:
![Создаем каталог, переходим в него и создаем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/images/81.png)

## 3.2) Вводим в файл lab8-1.asm текст программы из листинга 8.1. 
![Вводим текст в файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/images/82.png)

## 3.3) Создаем исполняемый файл и проверяем его работу.
![Создаем и запускаем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/images/83.png)

## 3.4) Изменяем текст программы, добавив изменение значение регистра ecx в цикле.
![Изменяем текст программы](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/images/84.png)

## 3.5) Создаем исполняемый файл и проверяем его работу.
![Создаем и запускаем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/images/85.png)

Регистр ecx принимает значения 9,7,5,3,1(исходное число 10, в цикле данный регистр уменьшается на 2 командой sub и loop).
Число проходов цикла не соответсвует числу N, так как уменьшается на 2.

## 3.6) Вносим изменения в текст программы добавив команды push и pop (добавления в стек и извлечения из стека) для сохранения значения счетчика цикла loop.
![Изменяем текст программы](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/images/86.png)

## 3.7) Создаем исполняемый файл и проверяем его работу.
![Создаем и запускаем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/images/87.png)
В данном случае число проходов цикла равна числу N.

## 3.8) Создаем файл lab8-2.asm в каталоге ~/work/arch-pc/lab08 и вводим в него текст программы из листинга 8.2.
![Создаем файл и вводим текст](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/images/88.png)

## 3.9) Создаем исполняемый файл и проверяем его работу, указав аргументы.
![Создаем и запускаем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/images/89.png)

## 3.10) Изменяем текст программы из листинга 8.3 для вычисления произведения аргументов командной строки.
![Изменяем текст программы](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/images/810.png)

## 3.11) Создаем исполняемый файл и проверяем его работу, указав аргументы.
![Создаем и запускаем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/images/811.png)


# 4) Самостоятельная работа
## 4.2) Пишем программу, которая находит сумму значений функции(вариант 3, 10х-5)
![Пишем программу](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/images/812.png)

## 4.3) Запускаем программу и вводим аргументы.
![Запускаем программу](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab08/images/813.png)

# 5)Выводы
Мы научились писать программы с использованием циклов и обработкой аргументов командной строки.
