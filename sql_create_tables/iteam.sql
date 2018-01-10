/* modified from https://gist.github.com/oinopion/4a207726edba8b99fd0be31cb28124d0 */
CREATE ROLE readaccess;
GRANT USAGE ON SCHEMA public to readaccess;
GRANT USAGE ON SCHEMA arrests to readaccess;
GRANT USAGE ON SCHEMA warrants to readaccess;
GRANT SELECT ON ALL TABLES IN SCHEMA public to readaccess;
GRANT SELECT ON ALL TABLES IN SCHEMA arrests to readaccess;
GRANT SELECT ON ALL TABLES IN SCHEMA warrants to readaccess;
ALTER DEFAULT PRIVILEGES IN SCHEMA public GRANT SELECT ON TABLES TO readaccess;
ALTER DEFAULT PRIVILEGES IN SCHEMA arrests GRANT SELECT ON TABLES TO readaccess;
ALTER DEFAULT PRIVILEGES IN SCHEMA warrants GRANT SELECT ON TABLES TO readaccess;
GRANT readaccess TO iteam;

