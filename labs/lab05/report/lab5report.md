---
## Front matter
title: "Отчёт по лабораторной работе №5"
subtitle: "Архитектура компьютеров и операционные системы"
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

# Цель работы

Цель данной работы -- настроика рабочей среды с помощью менеджера паролей pass и конфигурации chezmoi.

# Задание

1. Установитв и настроить Pass
2. Настроить интерфейс с броузером
3. Управление файлами конфигурации
4. Использовать chezmoi на нескольких машинах

# Выполнение лабораторной работы

## Установка и Настройка Pass

С помощью командой dnf install через суперпользователя устанавливаю pass, pass-otp и gopass:

![Установка pass pass-otp](image/1.PNG){#fig:001 width=70%}

![Установка gopass](image/2.PNG){#fig:002 width=70%}

С помощью gpg --list-secret-keys я отоюражаю ключ GPG:

![Kлюча GPG](image/3.PNG){#fig:003 width=70%}

С помощью pass init, инициализирую хранилище указывая свой адрес электроной почты и создаю структуру git (pass git init) для синхронирования:

![Инициализирование хранилище](image/5.PNG){#fig:005 width=70%}

Перехожу в ~/.password-store для посмотра статуса синхронизации:

![посмотр статуса синхронизации](image/6.PNG){#fig:006 width=70%}

## Настройка интерфейса с броузером

Добавляю плагин browserpass для firefox через броузера:

![Добавлен плагин](image/8.PNG){#fig:007 width=70%}

Для взаимодействия с броузером используется интерфейс native messaging. Поэтому кроме плагина к броузеру устанавливается программа, обеспечивающая интерфейс native messaging. Делаю это через терминала

![Включение репозитория Copr](image/9.PNG){#fig:008 width=70%}

![Установка browserpass native](image/10.PNG){#fig:009 width=70%}

## Сохранение пароля

Добавляю новый пароль в файле, который будет использоваться для хранения пароля. Этот файл находится в каталоге, определяющее файловую структуру для вашего хранилища паролей.

![Добавление пароля](image/11.PNG){#fig:0010 width=70%}

Заменяю существующий пароль с помощью pass generate --in-place Passwords.txt

![Замена пароля](image/13.PNG){#fig:0013 width=70%}

## Управление файлами конфигурации

### Дополнительное программное обеспечение

Устанавливаю дополнительное программное обеспечение:

![Установка дополнительного программного обеспечения](image/14.PNG){#fig:0014 width=70%}

Установливаю шрифты iosevka. Для этого надо включть copr peterwu/iosevka и искать iosevka:

![Включение copr peterwu/iosevka](image/15.PNG){#fig:0015 width=70%}

![Поиск iosevka](image/16.PNG){#fig:0016 width=70%}

![Установка шрифты](image/17.PNG){#fig:0017 width=70%}

## Установка бинарного файла

Скрипт определяет архитектуру процессора и операционную систему и скачивает необходимый файл, поэтому я просто запускаю sh -c "$(wget -qO- chezmoi.io/get)":

![Установка chezmoi](image/18.PNG){#fig:0018 width=70%}

## Создание собственного репозитория

С помощью утилита gh я создаю новый репозиторий dotfiles по шаблону yamadharma

![Создание репозиторий](image/19.PNG){#fig:0019 width=70%}

## Подключение репозитория к своей системе

Сhezmoi является клоном репозитория dotfiles. Инициализирую его:

![Инициализирование Сhezmoi](image/20.PNG){#fig:0020 width=70%}

Проверяю какие изменения внесёт chezmoi в домашний каталог, запуская chezmoi diff:

![Проверка изменений](image/21.PNG){#fig:0021 width=70%}

Применяю изменения запускав chezmoi apply -v:

![Применение изменений](image/22.PNG){#fig:0022 width=70%}

## Использование chezmoi на нескольких машинах

На другой машине я устанавливаю chezmoi

![Установка chezmoi на другой машине](image/23.PNG){#fig:0023 width=70%}

Далее инициализирую chezmoi со своём репозиторием dotfiles:

![Инициализирование Сhezmoi на другой машине](image/24.PNG){#fig:0024 width=70%}

Проверяю какие изменения внесёт chezmoi в домашний каталог, запуская chezmoi diff:

![Проверка изменений на второй машине](image/25.PNG){#fig:0025 width=70%}

Применяю изменения запускав chezmoi apply -v:

![Применение изменений на второй машине](image/26.PNG){#fig:0026 width=70%}

Меня устраивают изменения, внесённые chezmoi, поэтомму я просто обновляю chezmoi :

![Сhezmoi уже обновлено](image/27.PNG){#fig:0027 width=70%}

## Ежедневные операции c chezmoi

На моей основной машине я обновляю chezmoi на всякий случай:

![Сhezmoi уже обновлено](image/28.PNG){#fig:0028 width=70%}

Выполняю chezmoi git pull -- --autostash --rebase && chezmoi diff. Это запускается git pull --autostash --rebase в исходном каталоге, а chezmoi diff затем показывает разницу между целевым состоянием, вычисленным из исходного каталога, и фактическим состоянием.

![Извлечение изменений](image/29.PNG){#fig:0029 width=70%}

Далее применяю "изменения":

![Применение изменений после обновления](image/30.PNG){#fig:0030 width=70%}

Когда в исходный каталог вносятся изменения, chezmoi фиксирует изменения с помощью автоматически сгенерированного сообщения фиксации и отправляет их в репозиторий. Эта функция отключена по умолчанию но у меня уже была включено. Можно это увидеть в файле конфигурации ~/.config/chezmoi/chezmoi.toml:

![Функция фиксирование изменений автоматически](image/31.PNG){#fig:0031 width=70%}

# Выводы

При выполнении данной работы я настроил рабочую среду с помощью менеджера паролей pass и конфигурации chezmoi.

# Список литературы{.unnumbered}

[Архитектура ЭВМ](https://esystem.rudn.ru/mod/page/view.php?id=1098796)
