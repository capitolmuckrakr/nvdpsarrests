CREATE TABLE warrants.warrantsupplemental (
nin int REFERENCES warrants.base (nin),
hoi text,
coi text,
wnm text,
noc text,
ofc text,
ftf text,
trf text,
dso text,
dow int,
oca text,
ccn text,
bai text,
tra text,
mis text
)
