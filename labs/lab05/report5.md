---
## Front matter
title: "Отчёт по лабораторной работе №5"
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

Приобретение практических навыков работы в Midnight Commander. Освоение инструкций
языка ассемблера mov и int.

# 2)Задание
Написать 2 программы по примеру и впоследствии изменить их по условию.

# 3)Выполнение лабораторной работы
## 3.1) Заходим в Midnight Commander
    
![Используем команду mc](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/images/51.png)
    
## 3.2) Переходим в каталог созданный при выполнении лабораторной работы №4 и создаем там каталог lab05
    
![Используем клавишу f7 для создания каталога](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/images/52.png)
    
## 3.3) Создаем файл lab05-1.asm с помощью команды touch в командной строке в midnight commander
    
![Создаем lab05-1.asm](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/images/53.png)
    
## 3.4) Редактируем файл
    
![Редактируем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/images/54.png)
    
## 3.5) Транслируем текст и запускаем исполняемый файл
    
![Проверяем как работает программа](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/images/55.png)
    
## 3.6) Скачиваем файл и перемещаем его в нужный каталог 
    
![Скачиваем файл и перемещаем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/images/56.png)
    
## 3.7) Копируем с помощью f5
    
![Копируем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/images/57.png)
    
## 3.8) Создаем копию с помощью f6
    
![Копируем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/images/58.png)
    
## 3.9) Редактируем файл lab05-2.asm 
    
![Редактируем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/images/59.png)
    
## 3.10) Транслируем и запускаем исполняемый файл для проверки того как работает код
    
![Транслируем и запускаем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/images/1.png)
    
## 3.11) Снова открываем файл и редактируем, после проверяем как он работает
![Запускаем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/images/511.png)
Заметим, что если мы меняем sprintLF на sprint, то текст не переносится на новую строку

# 4)Задания для самостоятельной работы

## 4.1) Создаем копию файла lab05-1.asm и называем lab5-11.asm
![Копируем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/images/512.png)
    
## 4.2) Редактируем файл так, чтобы текст с клавиатуры выводился в консоль
    
![Редактируем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/images/513.png)
    
![Транслируем файл и проверяем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/images/514.png)
    
## 4.3) Создаем копию файла, редактируем его и проверяем
    
![Создаем копию файла](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/images/515.png)
    
![Редактируем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/images/516.png)
    
![Проверяем](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab05/images/517.png)

# 5)Выводы
Мы приобрели навыки работы с Midnight Commander и освоили инструкцию mov.
