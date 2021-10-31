# Business case - Recordly dbt hackathon 4.11.2021

This is the main folder what you should be looking at while doing. This README.md contains instructions for setting up the tooling, connecting to Snowflake, and what you should achieve with dbt during the hackathon.

- [Business case - Recordly dbt hackathon 4.11.2021](#business-case---recordly-dbt-hackathon-4112021)
  - [Business case](#business-case)
    - [Starting a dbt project](#starting-a-dbt-project)
      - [Installing](#installing)
      - [Starting a project](#starting-a-project)
    - [Source system - TPC-H data set](#source-system---tpc-h-data-set)
      - [Source tables - persistent staging managed outside dbt](#source-tables---persistent-staging-managed-outside-dbt)
    - [Staging](#staging)
    - [Transform](#transform)
      - [Seed files](#seed-files)
    - [Another source system appears!](#another-source-system-appears)
    - [Publish](#publish)
      - [Grants for end users](#grants-for-end-users)
    - [Documentation](#documentation)
    - [Expanding on what we did, and other nice stuff to mention](#expanding-on-what-we-did-and-other-nice-stuff-to-mention)
      - [Snapshots](#snapshots)
      - [Hooks](#hooks)
      - [Macros](#macros)
      - [Packages](#packages)
      - [Exposures](#exposures)
      - [Analyses](#analyses)

## Business case

> Your task is to create well documented and tested data sets from the TPC-H data set. A persistent staging is provided.

### Starting a dbt project

#### Installing

macOS
```
brew tap dbt-labs/dbt
brew install dbt 
(for all core supported databases)
(for only a single database and slightly faster installation)
brew install dbt-snowflake
dbt --version
```

Windows / Python / Container

Python >= 3.6
```
<use a virtual environment>
pip install dbt
(OR dbt-snowflake)
dbt --version
```

#### Starting a project

```
cd / mkdir to the root, where you'd like to create [project-name] folder for dbt project and files.

dbt init [project-name] --adapter snowflake
```
The --adapter flag is optional. It will create a correct template in your ~/.dbt/profiles.yml

```
profiles.yml
```

**profiles.yml** contains the information on how all of your dbt projects connect to their target databases. By default, ALL dbt projects will store their profiles in the same ~/.dbt/profiles.yml file.

You can specify a different place for your profiles.yml file.

You can populate the values in profiles.yml from ENV variables.

https://docs.getdbt.com/dbt-cli/configure-your-profile
https://docs.getdbt.com/reference/profiles.yml

```
code ~/.dbt/profiles.yml
```
```
profile_name_you_use_in_dbt_project.yml:
  target: dev
  outputs:
    dev:
      type: snowflake
      account: [account id]

      # User/password auth
      user: [username]
      password: [password]

      role: [user role]
      database: [database name]
      warehouse: [warehouse name]
      schema: [dbt schema]
      threads: [1 or more]
      client_session_keep_alive: False
      query_tag: [anything]
```

**Input your DEV DB info. Check Slack for account/username/passowrd info**

```
dbt_project.yml
```

### Source system - TPC-H data set

![schema](sample-data-tpch-schema.png)

#### Source tables - persistent staging managed outside dbt


### Staging

Consistent naming.

Add metadata columns.

<details>adasd
<summary>Spoiler</summary> 
sdfsdfsdfsd
</details> 

* Test assumptions.

* Incremental.

* If running in dev, limit the number of rows.
  * <details>
      <summary>Spoiler</summary> 
      sdfsdfsdfsdasd
      asd
  </details> 

### Transform

Views.

Phone numbers to contain Finnish country code.

Combine *Orders* and *Lineitems* because the used BI tool requires it.

Only certain countries.
#### Seed files

Use reference data from the attached csv to add a column.
### Another source system appears!

Configuring things with dbt_project.yml and folder structure.

### Publish

Tests.

Incremental materialization? Tables with swapping?

Primary / foreign key references.

#### Grants for end users

### Documentation

Document data lineage and published data sets.

### Expanding on what we did, and other nice stuff to mention

#### Snapshots

#### Hooks

#### Macros

#### Packages

#### Exposures

#### Analyses