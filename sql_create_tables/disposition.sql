CREATE TABLE arrests.disposition (
arrest_rec_num int,-- REFERENCES arrests.arrest (arrest_rec_num),
pcn text,
citation_num text,
court_docket text,
last_name text,
first_name text,
middle_name text,
suffix_name text,
moniker text,
disp_code text, --REFERENCES arrests.dispositioncode (code),
disp_date text,
court_ori text,
court_case_num text,
disp_noc text,
offense_class text,
sentence_date text,
facility text,
death_life_ind text, --REFERENCES arrests.deathlifecode (code),
term_min_yrs text,
term_min_months text,
term_min_days text,
term_min_hrs text,
term_max_yrs text,
term_max_months text,
term_max_days text,
term_max_hrs text,
suspended_flag text,
probation_yrs text,
probation_months text,
probation_days text,
probation_hrs text,
credit_served_yrs text,
credit_served_months text,
credit_served_days text,
credit_served_hrs text,
comm_service_days text,
comm_service_hrs text,
fine_amount text,
fine_excused text,
restitution_flag text,
restitution_amount text,
school_flag text,
councel_flag text,
special_cond_flag text,
firearms_flag text,
vote_flag text,
public_office_flag text,
fire_restored_date text,
vote_restored_date text,
puboff_restored_date text,
appellate_court text,
appeal_status_flag text,
appeal_status_date text,
court_probation text,
prob_rev_date text,
court_confinement text,
pardon_date text,
pardon_outcome text,
entering_agency text,
bin int,
prosecutor_ori text
)
