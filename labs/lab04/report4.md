---
## Front matter
title: "Отчёт по лабораторной работе №3"
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
mainfont: FreeSerif
romanfont: FreeSerif
sansfont: FreeSerif
monofont: FreeSerif
mathfont: FreeSerif
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
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

#1) Цель работы
Освоение процедуры компиляции и сборки программ, написанных на ассемблере NASM.

#2) Задание

- Работа на языке ассемблера NASM
- Заполнение отчета по выполнению лабораторной работы №4 с помощью языка разметки Markdown
- Задание для самостоятельной работы

#3) Выполнение лабораторной работы

Cоздайте каталог для работы с программами на языке ассемблера NASM.
![Создаем каталог](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/image/41.png)

Перейдите в созданный каталог.
![Переходим в созданный каталог](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/image/42.png)

Создайте текстовый файл с именем hello.asm.
![Создаем текстовый файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/image/43.png)

Откройте этот файл с помощью любого текстового редактора, например, gedit и введите в него текст.
![Открываем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/image/44.png)
![Вводим текст](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/image/45.png)

Проведите компиляцию для введенного текста и проверьте корректность выполнения программы.
![Компилируем текст](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/image/46.png)
![Проверяем создание файла](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/image/47.png)

Выполните следующую команду (nasm -o obj.o -f elf -g -l list.lst hello.asm) и проверьте создание файлов.
![Вводим команду и проверяем создание файла](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/image/48.png)

Чтобы получить исполняемую программу, объектный файл передайте на обработку компоновщику. Проверьте выполнение команды.
![Вводим команду и проверяем создание файла](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/image/49.png)

Выполните следующую команду: ld -m elf_i386 obj.o -o main.
![Вводим команду и смотрим, что получилось в результате](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/image/410.png)

Запустить на выполнение созданный исполняемый файл, находящийся в текущем каталоге.
![Вводим команду и смотрим, что получилось в результате](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/image/411.png)


#4) Задания для самостоятельной работы
1. В каталоге ~/work/arch-pc/lab04 с помощью команды cp создайте копию файла
hello.asm с именем lab4.asm
![Копируем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/image/412.png)

2. С помощью любого текстового редактора внесите изменения в текст программы в
файле lab4.asm так, чтобы вместо Hello world! на экран выводилась строка с вашими
фамилией и именем.
3. Оттранслируйте полученный текст программы lab4.asm в объектный файл. Выполните
компоновку объектного файла и запустите получившийся исполняемый файл.
![Выполняем пункты 2 и 3 и запускаем получившийся файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab04/image/413.png)
4. Скопируйте файлы hello.asm и lab4.asm в Ваш локальный репозиторий в ката-
лог ~/work/study/2023-2024/"Архитектура компьютера"/arch-pc/labs/lab04/.
Загрузите файлы на Github.


#5) Выводы лабораторной работы №3

Мы познакомились с языком ассемблера NASM и создали две работающих программы.
