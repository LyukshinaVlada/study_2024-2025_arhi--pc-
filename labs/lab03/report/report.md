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

# Цель работы

Целью данной лабораторной работы является освоение процедуры оформления отчетов с помощью легковесного языка разметки Markdown.

# Задание

- Установка необходимого ПО
- Заполнение отчета по выполнению лабораторной работы №3 с помощью языка разметки Markdown
- Задание для самостоятельной работы

# Теоретическое введение

Markdown — облегчённый язык разметки, созданный с целью обозначения форматирования в простом тексте, с максимальным сохранением его читаемости человеком, и пригодный для машинного преобразования в языки для продвинутых публикаций (HTML, Rich Text и других). 

# Выполнение лабораторной работы

## Компиляция шаблонов отчета

В терминале перехожу в директорию курса, обновляю репозиторий с удаленного на GitHub. 

![Обновляем репозиторий](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab03/report/image/1.png)

Провожу компиляцию шаблона с помощью команды make, проверяю корректность исполнения команды.

![Компиляция шаблона](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab03/report/image/2.png)

![Проверка корректности выполнения](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab03/report/image/3.png)

После проверки работоспособности компилятора шаблонов, я удаляю сгенерированные файлы с помощью команды make clean.
![Удаление сгенерированных шаблонов](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab03/report/image/4.png)
![Проверяем корректность выполнения программы](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab03/report/image/5.png)

С помощью терминала открываю шаблон отчета и редактирую его.

![Открываем шаблон отчета через терминал](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab03/report/image/7.png)
![Редактируем файл](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab03/report/image/6.png)

## Задания для самостоятельной работы

Аналогично выполнению отчета по текующей лабораторной работе, я выполняю отчет в markdown и по второй лабораторной работе.

#Отчет по лабораторной работе №2
Целью лабораторной работы №2 является изучить идеологию и применение средств контроля версий. Приобрести практические навыки по работе с системой git.

Порядок выполнения лабораторной работы
1. Настройка github. 
Создайте учётную запись на сайте https://github.com/ и заполните основные данные.
![Регистрируемся на github](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab03/report/image/82.png)

2. Базовая настройка git
Сначала сделаем предварительную конфигурацию git. Откройте терминал и введите следующие команды, указав имя и email владельца репозитория.
![Задаем имя и email репозитория](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab03/report/image/92.png)

3. Создание SSH ключа 
Для последующей идентификации пользователя на сервере репозиториев необходимо сгенерировать пару ключей (приватный и открытый). Далее необходимо загрузить сгенерённый открытый ключ. Для этого зайти на сайт http: //github.org/ под своей учётной записью и перейти в меню “Setting”. После этого выбрать в боковом меню “SSH and GPG keys” и нажать кнопку “New SSH key”. 
![Генерируем ключи](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab03/report/image/102.png)

4. Создание рабочего пространства и репозитория курса на основе шаблона
Откройте терминал и создайте каталог для предмета «Архитектура компьютера».
![Создаем каталог “Computer architecture” для предмета “Архитектура компьютера”](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab03/report/image/112.png)

5. Сознание репозитория курса на основе шаблона
Перейдите на станицу репозитория с шаблоном курса https://github.com/yamadharma/cour se-directory-student-template. Далее выберите Use this template. В открывшемся окне задайте имя репозитория (Repository name) study_2024–2025_arhpc и создайте репозиторий (кнопка Create repository from template).
![Задаем имя и создаем репозиторий](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab03/report/image/122.png)

6. Настройка каталога курса 
Перейдите в каталог курса.Удалите лишние файлы. Создайте необходимые каталоги. Отправьте файлы на сервер.
![Отправляем файлы в репозиторий](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab03/report/image/132.png)

7. Задание для самостоятельной работы 
1. Создайте отчет по выполнению лабораторной работы в соответствующем каталоге рабочего пространства (labs>lab02>report). 
2. Скопируйте отчеты по выполнению предыдущих лабораторных работ в соответствующие каталоги созданного рабочего пространства. 
3. Загрузите файлы на github.
![Загружаем отчет о первой лабораторной работе на github](/home/lyukshinava/work/study/2024-2025/Архитектура компьютера/arch-pc/labs/lab03/report/image/142.png)
#Вывод лабораторной работы №2
В ходе лабораторной работы мы изучили идеологию и применение средств контроля версий, а также приобрели практические навыки по работе с системой git.
Мы научились использовать репозиторий.


# Выводы лабораторной работы №3

В результате выполнения данной лабораторной работы я освоила процедуры оформления отчетов с помощью легковесного языка разметки Markdown.

# Список литературы
