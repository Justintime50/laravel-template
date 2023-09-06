# CHANGELOG

## Next Release

- Adds `clean` script and just target

## v0.7.0 (2023-08-09)

- Overhauls Dockerfile to have separate build steps for prod and dev builds
- Adds justfile
- Auto-upgrades mysql on deployments to match Docker image version

## v0.6.0 (2023-05-08)

- Adds `.dockerignore` file

## v0.5.1 (2023-01-28)

- Clarifies various README instructions
- Update Docker Compose file text replacements
- Bumps Dockerfile to use new setup that includes NPM image

## v0.5.0 (2022-12-31)

- Bumps to PHP 8.2
- Corrects text replacement of `app` to `laravel-template`
- Fixes composer commands needed in README

## v0.4.1 (2022-08-24)

- Ignore bin and vendor dirs
- Changes `app` reference in README find and replace to `laravel-template` so we don't accidentally blow away a bunch of the Laravel logic
- Clarifies README further

## v0.4.0 (2022-08-24)

- Bumps Docker image and docker-compose config

## v0.3.0 (2022-02-24)

- Various boilerplate added for linting and CI configuration

## v0.2.1 (2022-02-14)

- Various fixes across the project

## v0.2.0 (2021-12-11)

- Refactor project fixing various items and cleaning up more

## v0.1.1 (2021-04-15)

- Added links to guides or repos that describe how to setup `Traefik` and `DNSMasq` and clarified the setup in the README file

## v0.1.0 (2021-04-14)

- Initial release
- Automated installer
- README info on manually installing and setting up project
- `docker-compose` files and `Dockerfile` for Laravel and MySQL
