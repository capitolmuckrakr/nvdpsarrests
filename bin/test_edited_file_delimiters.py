# coding: utf-8
from __future__ import print_function
from delimiter_checker import delimiter_check
import pickle
datafilebase = '/Users/acohen/data/NV_DPS_Arrests/data/edited_RECORDS_REQUEST_table'
tables = range(2,15)
tables.remove(13)
[tables.remove(x) for x in range(6,9)]
problem_lines = {}
for n in tables:
    datafile = datafilebase + str(n) + '.txt'
    print("Checking table",n,sep=' ')
    problem_lines[n] = delimiter_check(datafile)
pkfilename = datafilebase[:len(datafilebase) - len('RECORDS_REQUEST_table')] + 'problem_lines.p'
pickle.dump(problem_lines,open(pkfilename,'wb'))
[print(k,v,sep=': ') for k,v in problem_lines]
