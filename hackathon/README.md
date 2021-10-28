# Business case - Recordly dbt hackathon 4.11.2021

This is the main folder what you should be looking at while doing. This README.md contains instructions for setting up the tooling, connecting to Snowflake, and what you should achieve with dbt during the hackathon.

- [Business case - Recordly dbt hackathon 4.11.2021](#business-case---recordly-dbt-hackathon-4112021)
  - [Business case](#business-case)
    - [Starting a dbt project](#starting-a-dbt-project)
    - [Source system - HTPC_H data set](#source-system---htpc_h-data-set)
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

> Your task is to create well documented and tested data sets from the HTPC-H data set. A persistent staging is provided.

### Starting a dbt project

```dbt init```

```dbt_project.yml```

```profile.yml```

```adapters```
### Source system - HTPC_H data set

#### Source tables - persistent staging managed outside dbt

### Staging

Consistent naming.

Add metadata columns.

Test assumptions.

Incremental.

### Transform

Views.

Phone numbers to contain Finnish country code.

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