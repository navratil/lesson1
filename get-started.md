# Get Started

## Requirements:

### Oracle Database
- Oracle Database version XX and above. 
- Compatible with any edition including the free [Express Edition](https://www.oracle.com/database/technologies/appdev/xe.html) or [Oracle Cloud Always Free Autonomous Database](https://www.oracle.com/cloud/free/).

### Developer tools 

Tool | Local database | ATP @ OCI | APEX @ OCI | RDB @ AWS 
--- |:---:|:---:|:---:|:---:
[Oracle SQL Developer](https://www.oracle.com/database/technologies/appdev/sqldeveloper-landing.html) | ✔️ | ✔️ | :x: | ✔️ 
[Oracle SQLcl](https://www.oracle.com/database/technologies/appdev/sqlcl.html) | ✔️ | ✔️ | :x: | ✔️ 
[Oracle Database Actions](https://www.oracle.com/database/technologies/appdev/db-actions.html) | ✔️ | ✔️ | ✔️ | ✔️ 
[Oracle APEX - SQL Workshop](https://apex.oracle.com/en/learn/getting-started/sql-workshop) | ✔️ | ✔️ | ✔️ | ✔️ 
Oracle SQL\*Plus  | ✔️ | ❔ | ❔ | ❔

Note: Doesn't work with [Oracle LiveSQL](https://livesql.oracle.com) as there is no APEX installed

## Install

To install the OPM into a new database schema and grant it to public, execute the script install.sql. This will create a new user OPM, grant all required privileges to that user and create PUBLIC synonyms needed.

For detailed instructions on other install options see the Install Guide

## Hello World

Install module to the current schema

    sql> opm.install('joedoe\superapi');
    
    Found package "joedoe\superapi" version 2.0.0 [latest]
    Requires "bigmac\tools" version 1.5+
        Found package "bigmac\tools" version 1.6.0 [latest]
        Downloading package "bigmac\tools" version 1.6.0 [latest] ...
        Installing package "bigmac\tools" ...
        Validating package "bigmac\tools" ...
        Package "bigmac\tools" installed succesfully
    Downloading package "joedoe\superapi" version 2.0.0 [latest] ...
    Installing package "joedoe\superapi" ...
    Validating package "joedoe\superapi" ...
    Package "joedoe\superapi" installed succesfully

List all installed modules

    sql> select * from (opm.modules);
    
    | Package         | Version | Installed | Status | Description
    ---------------------------------------------------------------------------------------
    | navratil\opm    | 1.0.1   | 1/1/2022  | Valid  | Oracle Database Package Manager
    | bigmac\tools    | 1.6.0   | 7/1/2022  | Valid  | Tools for building APIs
    | joedoe\superapi | 2.0.0   | 7/1/2022  | Valid  | Joe's super API for XYZ


# Documentation
Full documentation of the project is automatically published on [OPM](https://opm.jannavratil.com) repository pages

