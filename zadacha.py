import random
import sys
import key
import os
if key.key!=1:
    print("Where is file key? Chetverov is angry!!!")
else:
    if len(sys.argv)>1 and sys.argv[1]=="start":
        f=open('baza_uchiurok.txt','w')
        z=open('baza.txt','w')
        for k in range(7):
            f.write("[")
            for i in range (9):
                n=random.randint(234,7777)
                f.write(str(n))
                z.write(str(n))
                f.write(',')
                z.write(',')
            n=random.randint(234,7777)
            f.write(str(n))
            z.write(str(n))
            f.write('],')
            z.write(',')
    else:
        if len(sys.argv)>1 and os.path.basename(os.getcwd())=="hochu5":
            folders=["school","sch2107","informatika","Arduino","PythonGood","am_super","uchiurok","ITpolygon","Mikoyana","molodec","super"]
            baza_chisel=[[3542,2535,4588,469,7061,6127,972,1852,5271,6300],[4845,7176,6346,5538,6992,3971,4065,1914,4219,7658],[709,537,3269,5997,5872,2882,4786,5714,7706,2830],[1349,5948,4865,3458,6888,5895,5914,378,7652,5381],[7098,4157,6179,7549,3440,2334,1603,3288,882,4458],[6458,1238,2951,6263,2422,3725,6800,7758,2383,4831],[5482,7455,2678,6626,7125,597,1617,4581,5841,3948]]
            for i in range (7):
                path=os.getcwd()
                number_folders=random.randint(0,9)
                os.mkdir(folders[number_folders])
                os.chdir(os.getcwd()+"/"+folders[number_folders])
                f=open(folders[number_folders+1]+".txt","w")
                for simvol in range(baza_chisel[int(sys.argv[1])-1][i]): 
                    f.write(chr(random.randint(97,121)))
                f.close()
            print("file system is ready")
        else:
        	print("You are not in the directory named hochu5 or not arguments")
