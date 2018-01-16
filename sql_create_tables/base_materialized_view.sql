CREATE MATERIALIZED VIEW public.warrants_base
AS
SELECT nin,ori,vri,nam,dob::TEXT::DATE,rac,sex,hgt,wgt,eye,hai,sid
FROM warrants.base
WITH DATA;

ALTER TABLE public.warrants_base
OWNER TO acohen;
GRANT ALL ON TABLE public.warrants_base TO acohen;
GRANT SELECT ON TABLE public.warrants_base TO readaccess;

CREATE INDEX pub_warrants_base_nin_idx
ON public.warrants_base
USING btree (nin);

CREATE INDEX pub_warrants_base_ori_idx
ON public.warrants_base
USING btree (ori);

CREATE INDEX pub_warrants_base_vri_idx
ON public.warrants_base
USING btree (vri);

CREATE INDEX pub_warrants_base_nam_idx
ON public.warrants_base
USING btree (nam);

CREATE INDEX pub_warrants_base_lnam_idx
ON public.warrants_base
USING btree (LEFT(nam,position(',' in nam)-1));

CREATE INDEX pub_warrants_base_dob_idx
ON public.warrants_base
USING btree (dob);

CREATE INDEX pub_warrants_base_doby_idx
ON public.warrants_base
USING btree (date_part('year',dob::TIMESTAMP));

CREATE INDEX pub_warrants_base_rac_idx
ON public.warrants_base
USING btree (rac);

CREATE INDEX pub_warrants_base_sex_idx
ON public.warrants_base
USING btree (sex);

CREATE INDEX pub_warrants_base_sid_idx
ON public.warrants_base
USING btree (sid);
