1) Посмотреть где я === ```pwd```
2) Создать папку === ```mkdir folder_name1```
3) Зайти в папку === ```cd folder_name1```
4) Создать 3 папки === ```mkdir folder_name{2..4}```
5) Зайти в любую папку === ```cd folder_name4```
6) Создать 5 файлов (3 txt, 2 json) === ```touch file{1..3}.txt file{4,5}.json```
7) Создать 3 папки === ```mkdir folder_name{5..7}```
8) Вывести список содержимого папки === ```ls -la```
9) Открыть любой txt файл === ```vim filename.txt```
10) Написать туда что-нибудь, любой текст === press "i" then type "first line"
11) Сохранить и выйти === press "esc" then type ":wq"
12) Выйти из папки на уровень выше === ```cd ..```
13) переместить любые 2 файла, которые вы создали, в любую другую папку === ```mv folder_name2/file{1,2}.txt folder_name3/```
14) скопировать любые 2 файла, которые вы создали, в любую другую папку === ```cp folder_name3/file{1,2}.txt folder_name2/```
15) Найти файл по имени === ```find <path> -name HW1.txt```
16) Просмотреть содержимое в реальном времени === ```tail -f filename.txt``` *or* ```tail -F filename.txt``` *or* ```less +F filename.txt```
17) Вывести несколько первых строк из текстового файла === ``` head filename.txt ```
							*or* ```head -n5 filename.txt (5 строк)```
18) Вывести несколько последних строк из текстового файла === ```tail filename.txt```
							*or* ```tail -5 filename.txt (5 строк)```

19) Просмотреть содержимое длинного файла === ```less filename.txt```
20) Вывести дату и время === ```date```

Задание *
1) Отправить http запрос на сервер http://162.55.220.72:5005/terminal-hw-request 
```Bash
	curl "http://162.55.220.72:5005/terminal-hw-request" 

	curl "http://162.55.220.72:5005/get_method?name=Kirill&age=22"
```
2) Написать скрипт который выполнит автоматически пункты 3, 4, 5, 6, 7, 8, 13 
```Bash
#!/bin/bash
cd script
mkdir f1 f2 f3
cd f1
touch 1.txt 2.txt 3.txt 4.json 5.json
mkdir f1 f2 f3
ls -la
mv {1,2}.txt ../
```
