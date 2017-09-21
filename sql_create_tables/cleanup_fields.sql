UPDATE arrests.arrest
SET last_name = TRIM(last_name),
first_name = TRIM(first_name);
UPDATE warrants.warrant
SET last_name = TRIM(last_name),
first_name = TRIM(first_name);