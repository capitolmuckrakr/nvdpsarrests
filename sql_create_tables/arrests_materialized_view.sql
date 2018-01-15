CREATE MATERIALIZED VIEW public.arrests AS
SELECT t1.arrest_rec_num,t1.bin,t1.pcn,t1.sid,t1.last_name,t1.first_name,t1.middle_name,t1.suffix_name,t1.moniker,t1.arrest_date::DATE,t1.offense_date::DATE,
t1.palm,t1.treat_as_adult,t1.aoi,t1.boi,t1.agency_case_num,t1.fingerprint_status,t1.entering_agency
FROM arrests.arrest t1
ORDER BY t1.arrest_date::DATE DESC
WITH DATA;
ALTER TABLE public.dispositions
    OWNER TO acohen;

GRANT SELECT ON TABLE public.dispositions TO readaccess;
GRANT ALL ON TABLE public.dispositions TO acohen;

CREATE INDEX pub_disposition_arrest_rec_num_idx
    ON public.dispositions USING btree
    (arrest_rec_num)
    TABLESPACE pg_default;
CREATE INDEX pub_disposition_bin_idx
    ON public.dispositions USING btree
    (bin)
    TABLESPACE pg_default;
CREATE INDEX pub_disposition_court_case_num_idx
    ON public.dispositions USING btree
    (court_case_num COLLATE pg_catalog."default")
    TABLESPACE pg_default;
CREATE INDEX pub_disposition_disp_noc_idx
    ON public.dispositions USING btree
    (disp_noc COLLATE pg_catalog."default")
    TABLESPACE pg_default;
CREATE INDEX pub_disposition_entering_agency_idx
    ON public.dispositions USING btree
    (entering_agency COLLATE pg_catalog."default")
    TABLESPACE pg_default;
CREATE INDEX pub_disposition_first_name_idx
    ON public.dispositions USING btree
    (first_name COLLATE pg_catalog."default")
    TABLESPACE pg_default;
CREATE INDEX pub_disposition_last_name_idx
    ON public.dispositions USING btree
    (last_name COLLATE pg_catalog."default")
    TABLESPACE pg_default;
CREATE INDEX pub_disposition_sentence_date_idx
    ON public.dispositions USING btree
    (sentence_date)
    TABLESPACE pg_default;