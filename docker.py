#!/usr/bin/python3

import subprocess
import cgi
import spacy
english =  spacy.load("en_core_web_sm")

print("content-type: text/html")
print("Access-Control-Allow-Origin: *")
print()



f=cgi.FieldStorage()
cmd=f.getvalue("x")
o=subprocess.getoutput("sudo "+ cmd)
print(o)