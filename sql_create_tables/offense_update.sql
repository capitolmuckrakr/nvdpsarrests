CREATE TABLE arrests.offense_update (
arrest_rec_num int, --REFERENCES arrests.arrest (arrest_rec_num),
pcn text,
citation_num text,
court_docket text,
noc text,
offense_class text, --REFERENCES arrests.offenseclasscode (code),
reg_status text,
amended_date text,
amended_noc text,
entering_agency text,
bin int,
amended_off_class text,
reporting_ori text
)
