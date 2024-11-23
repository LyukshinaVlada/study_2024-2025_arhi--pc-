---
## Front matter
title: "Отчёт по лабораторной работе №7"
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
Изучить команды условного и безусловного переходов. Приобрести навыки написания
программ с использованием переходов. Изучить назначения и структуры файла
листинга.

# 2)Задание
Написать программы для вычисления значений функция и нахождения наименьших и наибольших переменных.

# 3)Выполнение лабораторной работы
## 3.1) Создаем каталог для программ лабораторной работы № 7, переходим в него и создаем файл lab7-1.asm
![Создаем каталог и файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/images/71.png)

## 3.2) Вводим в файл lab7-1.asm текст программы из листинга 7.1.
![Вводим текст](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/images/72.png)

## 3.3) Создаем исполняемый файл и запускаем его. 
![Создаем и запускаем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/images/73.png)

## 3.4) Изменяем текст программы в соответствии с листингом 7.2.
![Редактируем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/images/74.png)

## 3.5) Создаем исполняемый файл и проверяем его работу.
![Создаем и проверяем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/images/75.png)

## 3.6) Изменяем текст программы, чтобы программа выводила сообщения в обратном порядке(сообщение №3, сообщение №2, сообщение №1).
![Редактируем текст](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/images/76.png)

## 3.7) Создаем исполняемый файл и запускаем его.
![Создаем и запускаем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/images/77.png)

## 3.8) Создаем файл lab7-2.asm в каталоге ~/work/arch-pc/lab07.
![Создаем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/images/78.png)

## 3.9) Вводим в файл текст из листинга 7.3.
![Вводим текст](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/images/79.png)

## 3.10) Создаем исполняемый файл и проверяем его работу для разных значений B.
![Создаем файл и проверяем его работу](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/images/710.png)

## 3.11) Создаем файл листинга для программы из файла lab7-2.asm.
![Создаем файл листинга](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/images/711.png)

## 3.12) Открываем файл листинга lab7-2.lst с помощью текстового редактора mcedit.
![Открываем файл листинга](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/images/712.png)

## 3.13) Ознакомимся с содержимым листинга и объясним три строки из него.
Строка 65: 00000045 - адрес в сегменте кода, BB00000000 - машинный код, mov ebx,0 - присвоение переменной ebx значения 0.
Строка 66: 0000004A - адрес в сегменте кода, B803000000 - машинный код, mov eax,3 - присвоение переменнной ebx значения 3.
Строка 67: 0000004F - адрес в сегменте кода, CD80 - машинный код, int 80h - вызов ядра.

## 3.14) Открываем файл с программой lab7-2.asm и в инструкции с двумя операндами удаляем один операнд. 
![Удаляем операнд](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/images/713.png)

## 3.15) Выполняем трансляцию с получением файла листинга.
![Удаляем операнд](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/images/714.png)
Выдается ошибка.

## 3.16) Смотрим, какие изменения произошли после трансляции файла.
![Проверяем содержимое каталога](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/images/715.png)
Создались выходные файлы lab7-2 и lab7-2.lst.

## 3.17) Открываем листинг.
![Открываем листинг](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/images/716.png)
Замечаем, что в листинге так же добавилось сообщение об ошибке.

# 4) Самостоятельная работа
## 4.1) Создаем новый файл lab7-3.asm.
![Создаем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/images/717.png)

## 4.2) Пишем программу нахождения наименьшего значения из трех. Два значения( "a" и "c" прописываем в команде, "b" вводим с консоли).
![Пишем программу](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/images/718.png)

## 4.3) Запускаем программу и вводим значения исходя из листинга 7.5(вариант 7).
![Запускаем программу](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/images/719.png)

## 4.4) Создаем новый файл lab7-4.asm для выполнения второго задания.
![Создаем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/images/720.png)

## 4.4) Пишем программу для вычисления заданной функции(вариант 3).
![Пишем программу](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/images/721.png)

## 4.5) Запускаем программу и вводим значения из варианта 3.
![Запускаем программу](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab07/images/722.png)

# 5)Выводы
Мы изучили структуру файла листинга, команды условного и безусловного перехода. 
