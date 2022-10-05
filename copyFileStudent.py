from shutil import copyfile
for i in range(20):
    copyfile("file.html", "/var/www/html/students/student"+str(i)+"/file.html")
