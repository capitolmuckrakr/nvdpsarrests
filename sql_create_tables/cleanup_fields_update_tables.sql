UPDATE arrests.arrest_update
SET last_name = TRIM(last_name),
first_name = TRIM(first_name);
UPDATE warrants.warrant_update
SET last_name = TRIM(last_name),
first_name = TRIM(first_name);