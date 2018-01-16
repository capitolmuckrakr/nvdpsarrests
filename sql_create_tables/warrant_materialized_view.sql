CREATE MATERIALIZED VIEW public.warrants
AS
SELECT t1.warrant_rec_num,t1.bin,t1.nin,t1.last_name,t1.first_name,t1.middle_name,t1.suffix_name,t1.moniker,t1.cert_as_adult_flag,
t1.warrant_date::DATE,
t1.expiration_date::DATE,
t1.failure_to_flag,t1.traffic_violation_flag,t1.day_service_only_flag,t1.requesting_ori,t1.orig_agency_case_num,t1.court_ori,t1.court_case_num,t1.prosecutor_ori,t1.prosecutor_num,t1.transporting_ori,
t2.definition AS transportation_code_definition,
t1.packing_ori,t1.confirming_ori,t1.tot_cash_bail,t1.tot_surety_bail,t1.no_or_bail_flag,t1.no_bail_flag,t1.bail_comment,t1.miscellaneous,t1.entering_agency_ori,t1.retake_warrant,t1.local_warrant_num,t1.tot_converted_bail_amount
FROM warrants.warrant t1
LEFT JOIN warrants.transportationcode t2 ON t1.transportation_code = t2.transportation_code
WITH DATA;
ALTER TABLE public.warrants
OWNER TO acohen;
GRANT ALL ON TABLE public.warrants TO acohen;
GRANT SELECT ON TABLE public.warrants TO readaccess;

CREATE INDEX pub_warrants_warrant_rec_num_idx
ON public.warrants
USING btree (warrant_rec_num);

CREATE INDEX pub_warrants_bin_idx
ON public.warrants
USING btree (bin);

CREATE INDEX pub_warrants_nin_idx
ON public.warrants
USING btree (nin);

CREATE INDEX pub_warrants_last_name_idx
ON public.warrants
USING btree (last_name);

CREATE INDEX pub_warrants_first_name_idx
ON public.warrants
USING btree (first_name);

CREATE INDEX pub_warrants_suffix_name_idx
ON public.warrants
USING btree (suffix_name);

CREATE INDEX pub_warrants_moniker_idx
ON public.warrants
USING btree (moniker);

CREATE INDEX pub_warrants_cert_as_adult_flag_idx
ON public.warrants
USING btree (cert_as_adult_flag);

CREATE INDEX pub_warrants_warrant_date_idx
ON public.warrants
USING btree (warrant_date);

CREATE INDEX pub_warrants_expiration_date_idx
ON public.warrants
USING btree (expiration_date);

CREATE INDEX pub_warrants_requesting_ori_idx
ON public.warrants
USING btree (requesting_ori);

CREATE INDEX pub_warrants_orig_agency_case_num_idx
ON public.warrants
USING btree (orig_agency_case_num);

CREATE INDEX pub_warrants_court_ori_idx
ON public.warrants
USING btree (court_ori);

CREATE INDEX pub_warrants_court_case_num_idx
ON public.warrants
USING btree (court_case_num);

CREATE INDEX pub_warrants_prosecutor_ori_idx
ON public.warrants
USING btree (prosecutor_ori);

CREATE INDEX pub_warrants_prosecutor_num_idx
ON public.warrants
USING btree (prosecutor_num);

CREATE INDEX pub_warrants_transporting_ori_idx
ON public.warrants
USING btree (transporting_ori);

CREATE INDEX pub_warrants_packing_ori_idx
ON public.warrants
USING btree (packing_ori);

CREATE INDEX pub_warrants_confirming_ori_idx
ON public.warrants
USING btree (confirming_ori);

CREATE INDEX pub_warrants_tot_cash_bail_idx
ON public.warrants
USING btree (tot_cash_bail);

CREATE INDEX pub_warrants_tot_surety_bail_idx
ON public.warrants
USING btree (tot_surety_bail);

CREATE INDEX pub_warrants_no_or_bail_flag_idx
ON public.warrants
USING btree (no_or_bail_flag);

CREATE INDEX pub_warrants_no_bail_flag_idx
ON public.warrants
USING btree (no_bail_flag);

CREATE INDEX pub_warrants_entering_agency_ori_idx
ON public.warrants
USING btree (entering_agency_ori);

CREATE INDEX pub_warrants_retake_warrant_idx
ON public.warrants
USING btree (retake_warrant);

CREATE INDEX pub_warrants_local_warrant_num_idx
ON public.warrants
USING btree (local_warrant_num);

CREATE INDEX pub_warrants_tot_converted_bail_amount_idx
ON public.warrants
USING btree (tot_converted_bail_amount);