# coding: utf-8
from __future__ import print_function
import sys
import re
#datadir = "/Users/acohen/data/NV_DPS_Arrests/data/"
#datafile = datadir + "edited_RECORDS_REQUEST_table2.txt"
datafile = sys.argv[1]
file_cleaner = re.compile('\D+')
file_length = get_ipython().getoutput(u'wc -l $datafile')
file_length = file_length[0].strip()#[:5]
file_length = file_cleaner.split(file_length)[0]
file_length = int(file_length)
delims = {}
for n in range(1,file_length+1):
    if int(round(file_length,-3)) % n == 0:
        print("Processing line ",n," of ",file_length,sep="")
    delim_count = get_ipython().getoutput(u"head -$n $datafile | tail -1 | grep -o ';' | wc -l")
    delim_count = int(delim_count[0].strip().split()[0])
    if delim_count not in delims:
        delims[delim_count]=[]
    delims[delim_count].append(n)
lines = []
for x in sorted(delims,key=lambda x:len(delims[x]),reverse=True)[1:]:
    for l in delims[x]:
        lines.append(l)
print(datafile,': ',lines,sep='')
