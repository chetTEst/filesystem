import os
os.mkdir("/var/www/html/students")
for i in range(40):
    os.mkdir("/var/www/html/students/student"+str(i))
