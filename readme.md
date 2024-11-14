# Setup and Database Migration Instructions

## Requirements

- **Docker** and **Docker Compose**: For running the PostgreSQL database.
- **Liquibase**: For managing database migrations.

## Step 1: Start the PostgreSQL Database with Docker Compose

First, make sure you have Docker and Docker Compose installed. To start the PostgreSQL database, run the following command:

```bash
docker-compose up -d
```

This will spin up the PostgreSQL container and run it in detached mode.

## Step 2: Apply Database Migrations Using Liquibase

Once the PostgreSQL database is up and running, you can apply database migrations using Liquibase. Make sure you have Liquibase installed and configured.

To apply migrations, run the following command:

```bash
liquibase update
```
