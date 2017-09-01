CREATE TABLE arrests.arrestcomment (
arr_comment_rec_num int primary key,
arrest_rec_num int REFERENCES arrests.arrest (arrest_rec_num),
arr_comment text,
bin int
)
