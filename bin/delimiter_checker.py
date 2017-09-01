# coding: utf-8
from __future__ import print_function
import sys
import re
import time

def delimiter_check(datafile):
    file_cleaner = re.compile('\D+')
    file_length = get_ipython().getoutput(u'wc -l $datafile')
    file_length = file_length[0].strip()
    file_length = file_cleaner.split(file_length)[0]
    file_length = int(file_length)
    delims = {}
    (_,_,_,h,m,s,_,_,_) = time.localtime()
    print(h,m,s,sep=' ')
    for n in range(1,file_length+1):
        delim_count = get_ipython().getoutput(u"head -$n $datafile | tail -1 | grep -o ';' | wc -l")
        delim_count = int(delim_count[0].strip().split()[0])
        if delim_count not in delims:
            delims[delim_count]=[]
        delims[delim_count].append(n)
    lines = []
    for x in sorted(delims,key=lambda x:len(delims[x]),reverse=True)[1:]:
        for l in delims[x]:
            lines.append(l)
    lines.sort()
    return lines

if __name__ == '__main__':
    myfile = sys.argv[1]
    print(delimiter_check(myfile))
    
