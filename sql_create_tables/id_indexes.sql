CREATE INDEX arrests_offense_id_idx
ON arrests.offense USING btree (id);
CREATE INDEX arrests_offense_update_id_idx
ON arrests.offense_update USING btree (id);