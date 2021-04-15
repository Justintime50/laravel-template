#!/bin/bash

PROJECT_DIR="src"

main() {
    echo "Installing new Laravel project..."
    install_laravel && cd "$PROJECT_DIR" || exit 1
    setup_db_init
    echo "Laravel installed into $PROJECT_DIR!"
}

install_laravel() {
    composer create-project laravel/laravel "$PROJECT_DIR"
}

setup_db_init() {
    cp init-db.env.example init-db.env
}

main
