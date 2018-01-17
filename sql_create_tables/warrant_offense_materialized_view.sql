CREATE MATERIALIZED VIEW public.warrants_offenses
AS
SELECT pk,offense_rec_num,warrant_rec_num,offense_seq,noc_5,original_noc_5,cash_bail,surety_bail,offense_comment,entering_agency_ori,local_charge_num
FROM warrants.warrantoffense
WITH DATA;
ALTER TABLE public.warrants_offenses
OWNER TO acohen;
GRANT ALL ON TABLE public.warrants_offenses TO acohen;
GRANT SELECT ON TABLE public.warrants_offenses TO readaccess;

CREATE INDEX pub_warrant_offenses_pk_idx
ON public.warrants_offenses
USING btree (pk);

CREATE INDEX pub_warrant_offenses_offense_rec_num_idx
ON public.warrants_offenses
USING btree (offense_rec_num);

CREATE INDEX pub_warrant_offenses_warrant_rec_num_idx
ON public.warrants_offenses
USING btree (warrant_rec_num);

CREATE INDEX pub_warrant_offenses_offense_seq_idx
ON public.warrants_offenses
USING btree (offense_seq);

CREATE INDEX pub_warrant_offenses_noc_5_idx
ON public.warrants_offenses
USING btree (noc_5);

CREATE INDEX pub_warrant_offenses_original_noc_5_idx
ON public.warrants_offenses
USING btree (original_noc_5);

CREATE INDEX pub_warrant_offenses_cash_bail_idx
ON public.warrants_offenses
USING btree (cash_bail);

CREATE INDEX pub_warrant_offenses_surety_bail_idx
ON public.warrants_offenses
USING btree (surety_bail);

CREATE INDEX pub_warrant_offenses_entering_agency_ori_idx
ON public.warrants_offenses
USING btree (entering_agency_ori);

CREATE INDEX pub_warrant_offenses_local_charge_num_idx
ON public.warrants_offenses
USING btree (local_charge_num);