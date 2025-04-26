---
## Front matter
title: "Отчёт по лабораторной работе №11"
subtitle: "Текстовый редактор emacs"
author: "Джаллох Ишмаил"

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
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
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

Получить практические навыки работы с редактором Emacs.

# Задание

1. Выполнить основные команды emacs

# Выполнение лабораторной работы

Для данной работы, мне надо была установить Emacs:

![Установка Emacs](image/1.PNG){#fig:001 width=70%}

Выполнив Emacs в командной строке, я открыл текстовый редактор:

![Emacs](image/2.PNG){#fig:002 width=70%}

С помощью комбинации Ctrl-x Ctrl-f, создал файл lab07.sh:

![Созданный файл](image/3.PNG){#fig:003 width=70%}

Я написал некоторый текст в этом же файле (lab07.sh). После этого сохранил файл с помощью комбинации Ctrl-x Ctrl-s:

![текст в lab07.sh](image/4.PNG){#fig:004 width=70%}

Одной командой вырезал целую строку (С-k):

![Вырезание строки](image/5.PNG){#fig:005 width=70%}

С помощью C-y вставил эту строку в конец файла:

![Перемешение строку в конец файла](image/6.PNG){#fig:006 width=70%}

Выделил область текста (C-space):

![Выделенный текст](image/7.PNG){#fig:007 width=70%}

Скопировал область в буфер обмена (M-w) и вставил ее в конец файла:

![копирование и вставка](image/8.PNG){#fig:008 width=70%}

Выделил эту же область и на этот раз вырезал её (C-w):

![ВЫрезанная область](image/9.PNG){#fig:009 width=70%}

С помощью C-/ отменил последнее действие:

![отмена действие](image/10.PNG){#fig:0010 width=70%}

С помощью C-a переместил курсор в начало строки:

![Перемещение курсор в начало строки](image/11.PNG){#fig:0011 width=70%}

С помощью C-e переместил курсор в конец строки:

![Перемещение курсор в конец строки](image/12.PNG){#fig:0012 width=70%}

Переместил курсор в начало и конец буфера с помощью M-< и M-> соответственно:

![Перемешение курсор в буфере](image/13.PNG){#fig:0013 width=70%}

Выводил список активных буферов на экран с помощью C-x C-b:

![Активные буферы](image/14.PNG){#fig:0014 width=70%}

С помощью C-x o переместился во вновь открытое окно со списком открытых буферов и переключился на другой буфер:

![список открытых буферов](image/15.PNG){#fig:0015 width=70%}

С помощью C-x 0 закрыл окно со списком открытых буферов:

![Закрытие окно](image/16.PNG){#fig:0016 width=70%}

Без вывода списка буферов, я переключился между буферами:

![Переключение между буферами](image/17.PNG){#fig:0017 width=70%}

![Новый буфер](image/18.PNG){#fig:0018 width=70%}

Поделил фрейм на 4 части. Сначала я разделил фрейм на два окна по вертикали (C-x 3), а затем каждое из этих окон на две части по горизонтали (C-x 2):

![Фрейм разделённый на 4 окна](image/19.PNG){#fig:0019 width=70%}

В каждом из четырёх созданных окон открыл новый буфер: 

![Новые буферы](image/20.PNG){#fig:0020 width=70%}

Переключился в режим поиска (C-s) и искал Indent:

![Режим поиска](image/21.PNG){#fig:0021 width=70%}

Переключался между результатами поиска, нажимая C-s и вышл из режима поиска, нажав C-g:

![Переключение между результатами](image/23.PNG){#fig:0022 width=70%}

Перешл в режим поиска и замены (M-%), искал слово World, нажмал Enter, и заменил на Planet:

![Режим поиска](image/24.PNG){#fig:0023 width=70%}

Нажав M-s o, я использовал другой режим поиска. Он отличается от предыдущего тем, что выводит результаты поиска в новом окне:

![другой режим поиска](image/25.PNG){#fig:0024 width=70%}

![Результаты поиска](image/26.PNG){#fig:0025 width=70%}

# Выводы

При выполнение данной работы я получила практические навыки работы с Emacs.

# Ответы на котрольные вопросы

1. Emacs — один из наиболее мощных и широко распространённых редакторов, используемых в мире UNIX. Написан на языке высокого уровня Lisp.

2. Большое разнообразие сложных комбинаций клавиш, которые необходимы для редактирования файла и в принципе для работа с Emacs.

3. Буфер - это объект в виде текста. Окно - это область, в которой отображен буфер.

4. Да, можно.

5. Emacs использует буферы с именами, начинающимися с пробела, для внутренних целей. Отчасти он обращается с буферами с такими именами особенным образом — например, по умолчанию в них не записывается информация для отмены изменений.

6. Ctrl + c, а потом | и Ctrl + c Ctrl + |

7. С помощью команды Ctrl + x 3 (по вертикали) и Ctrl + x 2 (по горизонтали).

8. Настройки emacs хранятся в файле . emacs, который хранится в домашней дирректории пользователя. Кроме этого файла есть ещё папка . emacs.

9. Выполняет функцию стереть, думаю можно переназначить.

10. Для меня удобнее был редактор Emacs, так как у него есть командая оболочка. А vi открывается в терминале, и выглядит своеобразно.
