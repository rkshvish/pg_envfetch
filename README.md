# pg_envfetch

`pg_envfetch` is a PostgreSQL extension that allows you to access environment variables directly from SQL queries. It simplifies the process of retrieving environment variables within the PostgreSQL environment.

## Features
- Fetch any environment variable from PostgreSQL.
- Simple SQL function: `get_env_variable(var_name TEXT)`.

## Installation

1. Ensure you have PostgreSQL 16 installed on your system.
2. Clone this repository and navigate into the directory:
   ```bash
   git clone https://github.com/rkshvish/pg_envfetch.git
   cd pg_envfetch
3. Build and install the extension using make:
   ```bash
   make & make install
4. Enable the extension in your PostgreSQL database:
   ```sql
   CREATE EXTENSION pg_envfetch;

## Usage

Once installed, you can retrieve environment variables by calling the `get_env_variable` function. Below are some examples:

- **Retrieving the ENV variable:**
  ```sql
  SELECT get_env_variable('ENV_VARIABLE_NAME');


## Example Use Cases

- **Configuration Management:** Retrieve system-wide configuration settings without hard-coding them into SQL queries.
- **Secrets Management:** Use environment variables to manage API keys or database credentials in a secure way.
- **Dynamic Query Execution:** Adjust query behavior based on system environment variables (e.g., setting execution paths or file locations dynamically).
