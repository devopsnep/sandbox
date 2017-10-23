#!/usr/bin/python3
import re
names_file = open("names.txt",encoding="utf-8")
data=names_file.read()
names_file.close()
print(re.search(r'sherpa', data))
print(re.match(r'Kenneth', data))

#if you are searching beginning of string use "match"
#and if anywhere in string use "search"
