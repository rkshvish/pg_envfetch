-- pg_envfetch--1.0.sql
CREATE OR REPLACE FUNCTION get_env_variable(var_name TEXT)
RETURNS TEXT AS 'MODULE_PATHNAME', 'get_env_variable'
LANGUAGE C IMMUTABLE STRICT;
