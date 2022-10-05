import os
import sys

if len(sys.argv) == 1:
    print("Отсутсвуют параметры запуска")
    sys.exit(0)

index_html = """
<!DOCTYPE html>
<html xmlns="http://www.w3.org/1999/xhtml">
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
  <title>Фиксированный подвал</title>
  <style type="text/css">
   #content {
    width: 700px; /* Ширина слоя */
    margin: 0 auto 50px; /* Выравнивание по центру */
   }
   #footer {
    position: fixed; /* Фиксированное положение */
    left: 0; bottom: 0; /* Левый нижний угол */
    padding: 20px; /* Поля вокруг текста */
    background: #6f00cc; /* Цвет фона */
    color: #fff; /* Цвет текста */
    width: 100%; /* Ширина слоя */
   }
  </style>
 </head>
 <body>
  <div id="content">
   <h1>Учебный сервер</h1>
      <h2>Страницы пользователей</h2>
        <p><a href= "/students/student1">Студент 1</p>
<p><a href= "/students/student2">Студент 2</p>
<p><a href= "/students/student3">Студент 3</p>
<p><a href= "/students/student4">Студент 4</p>
<p><a href= "/students/student5">Студент 5</p>
<p><a href= "/students/student6">Студент 6</p>
<p><a href= "/students/student7">Студент 7</p>
<p><a href= "/students/student8">Студент 8</p>
<p><a href= "/students/student9">Студент 9</p>
<p><a href= "/students/student10">Студент 10</p>
<p><a href= "/students/student11">Студент 11</p>
<p><a href= "/students/student12">Студент 12</p>
<p><a href= "/students/student13">Студент 13</p>
<p><a href= "/students/student14">Студент 14</p>
<p><a href= "/students/student15">Студент 15</p>
<p><a href= "/students/student16">Студент 16</p>
<p><a href= "/students/student17">Студент 17</p>
<p><a href= "/students/student18">Студент 18</p>
<p><a href= "/students/student19">Студент 19</p>
<p><a href= "/students/student20">Студент 20</p>
<p><a href= "/students/student21">Студент 21</p>
<p><a href= "/students/student22">Студент 22</p>
<p><a href= "/students/student23">Студент 23</p>
<p><a href= "/students/student24">Студент 24</p>
<p><a href= "/students/student25">Студент 25</p>
<p><a href= "/students/student26">Студент 26</p>
<p><a href= "/students/student27">Студент 27</p>
<p><a href= "/students/student28">Студент 28</p>
<p><a href= "/students/student29">Студент 29</p>
<p><a href= "/students/student30">Студент 30</p>
<p><a href= "/students/student31">Студент 31</p>
<p><a href= "/students/student32">Студент 32</p>
<p><a href= "/students/student33">Студент 33</p>
<p><a href= "/students/student34">Студент 34</p>
<p><a href= "/students/student35">Студент 35</p>
<p><a href= "/students/student36">Студент 36</p>
<p><a href= "/students/student37">Студент 37</p>
<p><a href= "/students/student38">Студент 38</p>
<p><a href= "/students/student39">Студент 39</p>
  </div>
  <div id="footer">
   &copy; ГБОУ Школа №1409
  </div>
 </body>
</html>"""

file_html = """<!DOCTYPE html>
<html>
 <head>
  <meta charset="utf-8" />
  <title>Заголовок сраницы</title>
 </head>
 <body>
  <h1>Привет, мир</h1>
  <p><strong>Меня зовут:</strong> Имя<br>
   <strong>Я из:</strong> Город<br>
   <strong>Я преподаю предмет:</strong>Название предмета<br>
  </p>
 </body>
</html>
"""


if sys.argv[1] == "s":
    os.system('apt update')
    os.system('apt install apache2')
    with open('/var/www/html/index.html', 'w') as f:
        f.write(index_html)

    for i in range(40):
        os.system(f'useradd -c "student{i}" -d /home/student{i} -m -p "" -s /bin/bash student{i}')
        os.system(f'echo student{i}:student | chpasswd')

    os.mkdir("/var/www/html/students")
    for i in range(40):
        os.mkdir("/var/www/html/students/student"+str(i))
        with open(f"/var/www/html/students/student{i}/fileStudent.html", 'w') as f:
            f.write(file_html)
        os.system(f'chown -R student{i} /var/www/html/students/student{i}')
        os.system(f'chmod -R 755 /var/www/html/students/student{i}')

if sys.argv[1] == "r":
    os.system('rm -rf /var/www/html/students')
    os.mkdir("/var/www/html/students")
    for i in range(40):
        os.mkdir("/var/www/html/students/student" + str(i))
    with open(f"/var/www/html/students/student{i}/fileStudent.html", 'w') as f:
        f.write(file_html)
    os.system(f'chown -R student{i} /var/www/html/students/student{i}')
    os.system(f'chmod -R 755 /var/www/html/students/student{i}')



