#!/usr/bin/python3

import subprocess
import cgi
import spacy

print("content-type: text/html")
print("Access-Control-Allow-Origin: *")
print()

mydata = cgi.FieldStorage()
out = mydata.getvalue("x")
dockeros = "sudo docker run -it -d  --name os5  centos"
podos = "sudo kubectl create deployment pod1 --image=centos"
dimage = "sudo docker images"
pods = "sudo kubectl get pods"
ps = "sudo docker ps -a "


if "date" in out and "run" in out :
    print(subprocess.getoutput("date"))
elif  "cal" in out and "run" in out :
    print(subprocess.getoutput("cal"))
elif  "os" in out and "launch" in out :
    print(subprocess.getoutput(dockeros))
elif  "pod" in out and "launch" in out :
    print(subprocess.getoutput(podos))
elif  "docker" in out and "images" in out :
    print(subprocess.getoutput("sudo docker images"))
elif  "docker" in out and "os" in out and "runing" in out :
    print(subprocess.getoutput("docker ps -a"))
elif "how many" in out and "pods" in out :
    print(subprocess.getoutput("sudo kubectl get pods"))
