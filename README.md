<div align="center">

# Laravel Template

A Laravel project template to save you time and energy.

[![Build](https://github.com/Justintime50/laravel-template/workflows/build/badge.svg)](https://github.com/Justintime50/laravel-template/actions)
[![Licence](https://img.shields.io/github/license/justintime50/laravel-template)](LICENSE)

<img src="assets/showcase.png" alt="Showcase">

</div>

## Install

1. Click the Use this template button at the top of this project's GitHub page, it looks like this:

<img src="assets/use_template_button.png" alt="Use Template Button">

2. After using the template, clone the repo
3. Laravel Template assumes you have `composer` installed globally:

```bash
# Install Laravel into a `src` directory, setup env files, etc
./install.sh

# After installation is complete, remove the installer
rm install.sh
```

## Usage

```bash
# Spin up your Laravel app and database (this assumes you are using Traefik)
docker-compose up -d
```

**Easy text replacements**

1. Replace all instances of `app` with the name of your project (found in docker-compose files)
1. Replace all values in `src/.env` and `init-db.env` to reflect the values you need
1. Update name in `LICENSE`
1. Configure the `.github/workflows/build.yml` file
1. Update the `CHANGELOG`
1. Replace the showcase image in `/assets` and remove all other unneeded assets
1. Change the data in `.github/FUNDING.yml`
1. Delete this `README` and create a new one for your project

## Instructions for Manual Installation (Contributors to your project)

```bash
# Copy the env file and db init file, then edit both before continuing. The DB values must match in both files
cp src/.env.example src/.env
cp init-db.env.example init-db.env

# Generate a Laravel key
cd src && php artisan key:generate

# Install project dependencies
cd src && composer install --no-ansi --no-interaction --no-scripts --no-progress --prefer-dist

# Run database migrations once the database container is up and able to access connections
docker exec -it APP_NAME php artisan migrate

# Start the dev environment (assumes you have Traefik setup)
docker-compose up -d

# Deploy the project to production
docker-compose -f docker-compose.yml -f docker-compose-prod.yml up -d
```
