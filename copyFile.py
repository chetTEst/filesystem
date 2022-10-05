from shutil import copyfile
for i in range(20):
    copyfile("fileUchinika.html", "/var/www/html/ucheniki/uchenik"+str(i)+"/fileUchinika.html")
