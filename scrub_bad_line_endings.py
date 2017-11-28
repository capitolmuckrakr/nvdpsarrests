# coding: utf-8
import re, sys, os
pattern = re.compile(r'([A-Za-z0-9])\r\n')
file = sys.argv[1]
outfile = 'scrubbed_' + file
with open(file) as infile:
    with open(outfile,'w') as out:
        for line in infile.readlines():
            line2 = pattern.sub(r'\1',line)
            out.write(line2)
            