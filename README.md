<div align="center">

# Laravel Template

A Laravel project template to save you time and energy.

[![Build](https://github.com/Justintime50/laravel-template/workflows/build/badge.svg)](https://github.com/Justintime50/laravel-template/actions)
[![Licence](https://img.shields.io/github/license/justintime50/laravel-template)](LICENSE)

<img src="https://raw.githubusercontent.com/justintime50/assets/main/src/laravel-template/showcase.png" alt="Showcase">

</div>

## Setup Template

Click the `Use this template` button at the top of this project's GitHub page, it looks like this:

<img src="https://raw.githubusercontent.com/justintime50/assets/main/src/templates/use_template_button.png" alt="Showcase">

2. After using the template, clone the repo
3. Laravel Template assumes you have `composer` installed globally:

```bash
# Install Laravel into a `src` directory
composer create-project laravel/laravel src
```

Once Laravel is installed, replace text as needed throughout the project:

1. Replace all instances of `app` with the name of your project (found in docker-compose files)
1. Replace all values in `src/.env` and `database.env` to reflect the values you need
1. Update name in `LICENSE`
1. Configure the `.github/workflows/build.yml` file
1. Update the `CHANGELOG`
1. Delete this `README` and create a new one for your project

## Install

```bash
# Copy the env files, and edit as needed
cp src/.env-example src/.env && cp database.env-example database.env

# Run the setup script which will bootstrap all the requirements, spin up the service, and migrate the database
./setup.sh
```

## Usage

1. Setup [Traefik](https://github.com/Justintime50/multisite-docker-server) to manage routing and load balancing
1. Setup [DNSMasq](https://gist.github.com/Justintime50/882403451e3231a6c088743e0e66acb5) so you don't have to manage your `/etc/hosts` file while using Traefik for local development

## Deploy

```bash
# Deploy the project locally
docker compose up -d

# Deploy the project in production
docker compose -f docker-compose.yml -f docker-compose-prod.yml up -d
```

## Development

The following commands may need to be manually added before they're ready to use.

```bash
# Install dependencies
composer install

# Migrate the database
composer migrate
composer migrate-fresh

# Clean the database
composer db-clean

# Seed the database
composer seed

# Lint the PHP files
composer lint

# Compile SASS and Javascript during development
npm run dev

# Compile for production
npm run prod

# Watch for CSS and Javascript changes
npm run watch
```
