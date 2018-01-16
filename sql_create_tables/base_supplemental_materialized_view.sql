CREATE MATERIALIZED VIEW public.warrants_basesupplemental
AS
SELECT pk,nin,aka,cau,ccf,adb,asn,smt,smc
FROM warrants.basesupplemental
WITH DATA;
ALTER TABLE public.warrants_basesupplemental
OWNER TO acohen;
GRANT ALL ON TABLE public.warrants_basesupplemental TO acohen;
GRANT SELECT ON TABLE public.warrants_basesupplemental TO readaccess;

CREATE INDEX pub_warrants_basesupplemental_pk_idx
ON public.warrants_basesupplemental
USING btree (pk);

CREATE INDEX pub_warrants_basesupplemental_nin_idx
ON public.warrants_basesupplemental
USING btree (nin);

CREATE INDEX pub_warrants_basesupplemental_aka_idx
ON public.warrants_basesupplemental
USING btree (aka);

CREATE INDEX pub_warrants_basesupplemental_ccf_idx
ON public.warrants_basesupplemental
USING btree (ccf);

CREATE INDEX pub_warrants_basesupplemental_ccf_idx
ON public.warrants_basesupplemental
USING btree (adb);

CREATE INDEX pub_warrants_basesupplemental_ccf_idx
ON public.warrants_basesupplemental
USING btree (asn);