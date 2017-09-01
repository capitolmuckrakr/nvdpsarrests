CREATE TABLE arrests.dispositioncomment (
disp_comment_rec_num int primary key,
arrest_rec_num int REFERENCES arrests.arrest (arrest_rec_num),
offense_seq int,
disp_comment text,
bin int
)
