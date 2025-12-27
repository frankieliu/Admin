\d TABLE_NAME   -- display column information
\dt             -- display TABLESPACE   
truncate table <TABLE> cascade;

create user postgres;
alter role postgres superuser;
alter role frankliu superuser;

grant all privileges on database postgres to postgres;

\i some_sql.SQL
\dn list the schema names

-- remove a database
-- must be in another db

-- Drop all connections:
SELECT pg_terminate_backend(pid)
FROM pg_stat_activity
WHERE datname = 'trajectory_db';


--