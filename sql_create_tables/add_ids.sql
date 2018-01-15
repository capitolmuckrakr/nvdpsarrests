ALTER TABLE arrests.offense_update
ADD COLUMN id TEXT;
UPDATE arrests.offense_update
SET id = md5(textin(record_out(offense_update)));

ALTER TABLE arrests.offense
ADD COLUMN id TEXT;
UPDATE arrests.offense
SET id = md5(textin(record_out(offense)));