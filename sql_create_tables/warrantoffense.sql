CREATE TABLE warrants.warrantoffense (
offense_rec_num int,
warrant_rec_num int REFERENCES warrants.warrant (warrant_rec_num),
offense_seq int,
noc_5 text,
noc_11 text,
original_noc_5 text,
original_noc_11 text,
cash_bail money,
surety_bail money,
offense_comment text,
entering_agency_ori text,
local_charge_num text
)
