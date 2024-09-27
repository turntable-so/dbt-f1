# dbt-f1
Example dbt project using Ergast F1 data

## Usage instructions

1. Make sure [rye](https://github.com/astral-sh/rye) is installed.
2. [*Optional*] Set up a `dbt_f1` profile in your `profiles.yml` for whatever warehouse you plan to use (Snowflake, Bigquery, etc.). Otherwise, a local duckdb will be created by default.
3. Run the following commands to setup the project:

```bash
rye sync
rye run dbtx seed
rye run dbtx run
```

## ERD

Here is the ERD for the source data:
![ERD](https://ergast.com/images/ergast_db.png)
