# Introduction
OPM is an online repository and framework for the publishing, discovery, installation, version and dependency management of Oracle PL/SQL projects (modules). 

It's what [NPM](https://nodejs.org/en/knowledge/getting-started/npm/what-is-npm/) is to NodeJS or [PIP](https://pypi.org/project/pip/) to Python.

# Key features

![demo-in-apex](/assets/demo-apex.gif)

- **Discover** - Find a PL/SQL module that fits your needs in an online repository
- **Install** - Automatic installation with one command: No downloads, unpacking and running command line tools like SQL*Plus
- **Versioning** - Each release of a module has an unique version number for compability and dependency tracking
- **Dependency resolver** - Automatically install all dependant modules. Avoid compability issues when using multiple modules.
- **Update** - One command to automatically update to an installed module
- **Uninstall** - One command to uninstall a module
- [**Publish**](/docs/publish.md) - Create and publish your own PL/SQL projects as modules in an online repository

Requirements:
- Oracle Database version XX and above. It could be any edition including the free [Express Edition](https://www.oracle.com/database/technologies/appdev/xe.html) or [Oracle Cloud Always Free Autonomous Database](https://www.oracle.com/cloud/free/).

# Quick demo

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

See also [Getting started](get-started.md)

# Use anyway you need

Tool | Local database | ATP @ OCI | APEX @ OCI | RDB @ AWS 
--- |:---:|:---:|:---:|:---:
[Oracle SQL Developer](https://www.oracle.com/database/technologies/appdev/sqldeveloper-landing.html) | ✔️ | ✔️ | :x: | ✔️ 
[Oracle SQLcl](https://www.oracle.com/database/technologies/appdev/sqlcl.html) | ✔️ | ✔️ | :x: | ✔️ 
[Oracle Database Actions](https://www.oracle.com/database/technologies/appdev/db-actions.html) | ✔️ | ✔️ | ✔️ | ✔️ 
[Oracle APEX - SQL Workshop](https://apex.oracle.com/en/learn/getting-started/sql-workshop) | ✔️ | ✔️ | ✔️ | ✔️ 
Oracle SQL\*Plus  | ✔️ | ❔ | ❔ | ❔

Note: Doesn't work with [Oracle LiveSQL](https://livesql.oracle.com) as there is no APEX installed

# Download
Published releases are available for download on the [OPM GitHub Releases Pages](https://github.com/navratil/OPM/releases).

# Documentation
Full documentation of the project is automatically published on [OPM](https://opm.jannavratil.com) repository pages

# Installation
To install the OPM into a new database schema and grant it to public, execute the script install.sql. This will create a new user OPM, grant all required privileges to that user and create PUBLIC synonyms needed.

For detailed instructions on other install options see the Install Guide

