CREATE MATERIALIZED VIEW public.offenses AS
SELECT t1.pk,t1.arrest_rec_num,t1.pcn,t1.noc,t1.offense_class,t1.reg_status,
t1.amended_date::DATE,
t1.amended_noc,t1.entering_agency,t1.bin,t1.amended_off_class,t1.reporting_ori
FROM arrests.offense t1
WITH DATA;
ALTER TABLE public.offenses
    OWNER TO acohen;

GRANT SELECT ON TABLE public.offenses TO readaccess;
GRANT ALL ON TABLE public.offenses TO acohen;

CREATE INDEX pub_offenses_amended_date_idx
    ON public.offenses USING btree
    (amended_date);
CREATE INDEX pub_offenses_amended_noc_idx
    ON public.offenses USING btree
    (amended_noc);
CREATE INDEX pub_offenses_arrest_rec_num_idx
    ON public.offenses USING btree
    (arrest_rec_num);
CREATE INDEX pub_offenses_bin_idx
    ON public.offenses USING btree
    (bin);
CREATE INDEX pub_offenses_entering_agency_idx
    ON public.offenses USING btree
    (entering_agency);
CREATE INDEX pub_offenses_noc_idx
    ON public.offenses USING btree
    (noc);
CREATE INDEX pub_offenses_reporting_ori_idx
    ON public.offenses USING btree
    (reporting_ori);
CREATE INDEX pub_offenses_pk_idx
    ON public.offenses USING btree
    (pk);