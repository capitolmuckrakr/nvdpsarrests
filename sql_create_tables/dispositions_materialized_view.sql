CREATE MATERIALIZED VIEW public.dispositions AS 
 SELECT t1.pk,
 t1.arrest_rec_num,
    t1.pcn,
    t1.last_name,
    t1.first_name,
    t1.middle_name,
    t1.suffix_name,
    t1.moniker,
    t2.description,
    t1.disp_date::date AS disp_date,
    t1.court_ori,
    t1.court_case_num,
    t1.disp_noc,
    t1.offense_class,
    t1.sentence_date::date AS sentence_date,
    t1.facility,
    t1.death_life_ind,
    t1.term_min_yrs,
    t1.term_min_months,
    t1.term_min_days,
    t1.term_min_hrs,
    t1.term_max_yrs,
    t1.term_max_months,
    t1.term_max_days,
    t1.term_max_hrs,
    t1.suspended_flag,
    t1.probation_yrs,
    t1.probation_months,
    t1.probation_days,
    t1.probation_hrs,
    t1.credit_served_yrs,
    t1.credit_served_months,
    t1.credit_served_days,
    t1.credit_served_hrs,
    t1.comm_service_days,
    t1.comm_service_hrs,
    t1.fine_amount,
    t1.fine_excused,
    t1.restitution_flag,
    t1.restitution_amount,
    t1.school_flag,
    t1.councel_flag,
    t1.special_cond_flag,
    t1.firearms_flag,
    t1.vote_flag,
    t1.public_office_flag,
    t1.fire_restored_date::date AS fire_restored_date,
    t1.vote_restored_date::date AS vote_restored_date,
    t1.puboff_restored_date::date AS puboff_restored_date,
    t1.appellate_court,
    t1.appeal_status_flag,
    t1.appeal_status_date::date AS appeal_status_date,
    t1.court_probation,
    t1.prob_rev_date::date AS prob_rev_date,
    t1.court_confinement,
    t1.pardon_date::date AS pardon_date,
    t1.pardon_outcome,
    t1.entering_agency,
    t1.bin,
    t1.prosecutor_ori
   FROM arrests.disposition t1
     JOIN arrests.dispositioncode t2 ON t1.disp_code = t2.code
  ORDER BY (t1.disp_date::date) DESC
WITH DATA;

ALTER TABLE public.dispositions
  OWNER TO acohen;
GRANT ALL ON TABLE public.dispositions TO acohen;
GRANT SELECT ON TABLE public.dispositions TO readaccess;

CREATE INDEX pub_disposition_arrest_rec_num_idx
  ON public.dispositions
  USING btree
  (arrest_rec_num);

CREATE INDEX pub_disposition_bin_idx
  ON public.dispositions
  USING btree
  (bin);

CREATE INDEX pub_disposition_court_case_num_idx
  ON public.dispositions
  USING btree
  (court_case_num COLLATE pg_catalog."default");

CREATE INDEX pub_disposition_disp_noc_idx
  ON public.dispositions
  USING btree
  (disp_noc COLLATE pg_catalog."default");

CREATE INDEX pub_disposition_entering_agency_idx
  ON public.dispositions
  USING btree
  (entering_agency COLLATE pg_catalog."default");

CREATE INDEX pub_disposition_first_name_idx
  ON public.dispositions
  USING btree
  (first_name COLLATE pg_catalog."default");

CREATE INDEX pub_disposition_last_name_idx
  ON public.dispositions
  USING btree
  (last_name COLLATE pg_catalog."default");

CREATE INDEX pub_disposition_sentence_date_idx
  ON public.dispositions
  USING btree
  (sentence_date);

CREATE INDEX pub_disposition_pk_idx
  ON public.dispositions
  USING btree
  (pk);