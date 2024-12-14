---
## Front matter
title: "Отчёт по лабораторной работе №10"
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
Приобретение навыков написания программ для работы с файлами.


# 2)Выполнение лабораторной работы
## 2.1) Создаем каталог для программам лабораторной работы № 10, переходим в него и создаем файлы lab10-1.asm, readme-1.txt и readme-2.txt
![Создаем каталог, переходим в него и создаем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab10/images/101.png)

## 2.2) Вводим в файл lab10-1.asm текст программы из листинга 10.1.
![Вводим текст](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab10/images/102.png)

## 2.3) Создаем исполняемый файл и проверяем его работу.
![Создаем исполняемый файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab10/images/103.png)

## 2.4) С помощью команды chmod изменяем права доступа к исполняемому файлу lab10-1. Запрещаем его выполнение и пытаемся выполнить файл.
![Изменяем права и выполняем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab10/images/104.png)
После попытки выполнить файл, нам выдает сообщение: "Отказано в доступе". Это происходит из-за того, что перед этим мы поставили запрет на выполнение.

## 2.5) С помощью команды chmod изменяем права доступа к файлу lab10-1.asm с исходным текстом программы, добавив права на исполнение. Пытаемся выполнить его.
![Возвращаем права и выполняем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab10/images/105.png)
lab10-1.asm является файлом с исходным кодом программы на языке ассемблера. После искусственного добавления права на исполнение мы не получим ожидаемого результата. Сначала файл нужно компилировать или ассемблировать в машинный код, и только потом выполнять.

## 2.6) В соответствии с вариантом в таблице 10.4 предоставляем права доступа к файлу readme-1.txt, представленные в символьном виде, а для файла readme-2.txt – в двоичном виде. Проверяем правильность выполнения с помощью команды ls -l.
![Предоставляем права доступа(вариант 3)](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab10/images/106.png)


# 3) Самостоятельная работа
## 3.1) Создаем новый файл.
![Создаем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab10/images/107.png)

## 3.2) Пишем программу работающую по алгоритму.
![Пишем программу](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab10/images/108.png)
Алгоритм:
• Вывод приглашения “Как Вас зовут?”
• ввести с клавиатуры свои фамилию и имя
• создать файл с именем name.txt
• записать в файл сообщение “Меня зовут”
• дописать в файл строку введенную с клавиатуры
• закрыть файл

## 3.3) Создаем исполняемый файл и проверяем его работу. Проверяем наличие файла и его содержимое с помощью команд ls и cat.
![Создаем файл и проверяем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab10/images/109.png)


# 4)Выводы
Мы научились писать программы для работы с файлам и научились предоставлять права доступа к файлам.
