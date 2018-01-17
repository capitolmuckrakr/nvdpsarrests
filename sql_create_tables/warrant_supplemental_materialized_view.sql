CREATE MATERIALIZED VIEW public.warrants_supplemental
AS
SELECT pk,nin,hoi,coi,wnm,noc,ofc,ftf,trf,dso,dow,oca,ccn,bai,tra,mis
FROM warrants.warrantsupplemental
WITH DATA;
ALTER TABLE public.warrants_supplemental
OWNER TO acohen;
GRANT ALL ON TABLE public.warrants_supplemental TO acohen;
GRANT SELECT ON TABLE public.warrants_supplemental TO readaccess;

CREATE INDEX pub_warrant_supplemental_pk_idx
ON public.warrants_supplemental
USING btree (pk);

CREATE INDEX pub_warrant_supplemental_nin_idx
ON public.warrants_supplemental
USING btree (nin);

CREATE INDEX pub_warrant_supplemental_hoi_idx
ON public.warrants_supplemental
USING btree (hoi);

CREATE INDEX pub_warrant_supplemental_coi_idx
ON public.warrants_supplemental
USING btree (coi);

CREATE INDEX pub_warrant_supplemental_wnm_idx
ON public.warrants_supplemental
USING btree (wnm);

CREATE INDEX pub_warrant_supplemental_lwnm_idx
ON public.warrants_supplemental
USING btree (LEFT(wnm,position(',' in wnm)-1));

CREATE INDEX pub_warrant_supplemental_noc_idx
ON public.warrants_supplemental
USING btree (noc);

CREATE INDEX pub_warrant_supplemental_dow_idx
ON public.warrants_supplemental
USING btree (dow);

CREATE INDEX pub_warrant_supplemental_oca_idx
ON public.warrants_supplemental
USING btree (oca);

CREATE INDEX pub_warrant_supplemental_ccn_idx
ON public.warrants_supplemental
USING btree (ccn);

CREATE INDEX pub_warrant_supplemental_bai_idx
ON public.warrants_supplemental
USING btree (bai);

CREATE INDEX pub_warrant_supplemental_tra_idx
ON public.warrants_supplemental
USING btree (tra);

CREATE INDEX pub_warrant_supplemental_mis_idx
ON public.warrants_supplemental
USING btree (mis);