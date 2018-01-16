CREATE MATERIALIZED VIEW public.warrants_base_supplemental
AS
SELECT pk,nin,aka,cau,ccf,adb,asn,smt,smc
FROM warrants.basesupplemental
WITH DATA;
ALTER TABLE public.warrants_base_supplemental
OWNER TO acohen;
GRANT ALL ON TABLE public.warrants_base_supplemental TO acohen;
GRANT SELECT ON TABLE public.warrants_base_supplemental TO readaccess;

CREATE INDEX pub_warrants_base_supplemental_pk_idx
ON public.warrants_base_supplemental
USING btree (pk);

CREATE INDEX pub_warrants_base_supplemental_nin_idx
ON public.warrants_base_supplemental
USING btree (nin);

CREATE INDEX pub_warrants_base_supplemental_aka_idx
ON public.warrants_base_supplemental
USING btree (aka);

CREATE INDEX pub_warrants_base_supplemental_ccf_idx
ON public.warrants_base_supplemental
USING btree (ccf);

CREATE INDEX pub_warrants_base_supplemental_adb_idx
ON public.warrants_base_supplemental
USING btree (adb);

CREATE INDEX pub_warrants_base_supplemental_asn_idx
ON public.warrants_base_supplemental
USING btree (asn);