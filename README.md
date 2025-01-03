<div align="center">

# Laravel Template

A Laravel project template to save you time and energy.

[![CI Status](https://github.com/Justintime50/laravel-template/workflows/ci/badge.svg)](https://github.com/Justintime50/laravel-template/actions)
[![Licence](https://img.shields.io/github/license/justintime50/laravel-template)](LICENSE)

<img src="https://raw.githubusercontent.com/justintime50/assets/main/src/laravel-template/showcase.png" alt="Showcase">

</div>

## Setup Template

1. Click the `Use this template` button at the top of this project's GitHub page, it looks like this:

<img src="https://raw.githubusercontent.com/justintime50/assets/main/src/templates/use_template_button.png" alt="Showcase">

2. After using the template, clone the repo
3. Laravel Template assumes you have `composer` installed globally:

```bash
# Install Laravel into a `src` directory
composer create-project laravel/laravel src
```

### Text Replacement

Once Laravel is installed, replace text as needed throughout the project:

1. Replace all instances of `laravel-template` with the name of your project (found in docker-compose files)
2. Replace all values in `src/.env`  to reflect the values you need
3. Update name in `LICENSE`
4. Uncomment and configure the `.github/workflows/build.yml` file
5. Update the `CHANGELOG`
6. Delete this `README` and create a new one for your project

### Customization

1. Change the `session` driver from file based to database
2. Change the logging from `stack` to `daily`
3. (Optional) Change the `cache` driver from file based to Redis

In the `composer.json` file, add the following:

1. `"bin-dir": "bin"` to the `config` section
2. Install PHP CodeSniffer: `composer require --dev squizlabs/php_codesniffer`
3. Install larastan: `composer require --dev larastan/larastan`
4. Install Justintime50 PHP styles via `npm install --save-dev justintime50-styles`
5. Correct prod and dev dependencies as production builds won't contain dev deps
6. Create a `phpstan.neon` file with the following content:

```neon
includes:
    - vendor/larastan/larastan/extension.neon

parameters:
    paths:
        - app/
        - tests/
    level: 5
```

## Install

```bash
# Copy the env files, and edit as needed
mv src/.env.example src/.env-example
cp src/.env-example src/.env && cp .env-example .env

# Move the justfile location
mv justfile src/justfile

# Run the setup script which will bootstrap all the requirements, spin up the service, and migrate the database
just setup
```

## Usage

1. Setup [Traefik](https://gist.github.com/Justintime50/0721f421ac2173bd80f8a29805876bba) to manage routing and load balancing
1. Setup [DNSMasq](https://gist.github.com/Justintime50/882403451e3231a6c088743e0e66acb5) so you don't have to manage your `/etc/hosts` file while using Traefik for local development

## Deploy

```bash
# Deploy the project locally
just run

# Deploy the project in production
just prod
```

## Development

The following commands may need to be manually added before they're ready to use.

```bash
# Get a comprehensive list of development tools
just --list
```
