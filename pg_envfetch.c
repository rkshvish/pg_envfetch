#include "postgres.h"
#include "fmgr.h"
#include "utils/builtins.h"
#include <stdlib.h>

PG_MODULE_MAGIC;

PG_FUNCTION_INFO_V1(get_env_variable);

Datum
get_env_variable(PG_FUNCTION_ARGS)
{
    char *var_name = text_to_cstring(PG_GETARG_TEXT_P(0));
    char *value = getenv(var_name);

    if (value) {
        PG_RETURN_TEXT_P(cstring_to_text(value));
    } else {
        PG_RETURN_NULL();
    }
}
