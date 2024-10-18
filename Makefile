MODULES = pg_envfetch
EXTENSION = pg_envfetch
DATA = pg_envfetch--1.0.sql

PG_CONFIG = /usr/lib/postgresql/16/bin/pg_config
PGXS := $(shell $(PG_CONFIG) --pgxs)
include $(PGXS)

EXTRA_CLEAN = load_env.o load_env.so
