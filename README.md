# CKEditor AXE Dev Environment

This is docker-compose composer based development environment for
[`ckeditor_axe`]() module.

## REQUIREMENTS

`docker-compose >= 1.22.0`

## QUICK SETUP

Run `./quick-start.sh` from the project environment root directory on the host
machine.

## MANUAL SETUP

1.  Create `.env` and `docker-compose.override.yml` files from `.env.example`
    and `example.docker-compose.override.yml` example files. Typically the 
    default values will be enough for the start of the development. Feel free
    to edit `.env` and `docker-compose.override.yml` files to your host
    environment specific configuration.
1.  Run containers `docker-compose up` (`-d` for the detached mode). In case of
    the detached mode use `docker-compose logs -f` to track logs from the
    containers.
1.  Go into the `php` container: `docker-compose exec php bash`
1.  Run `composer install` **within `php` container** to install
    project dependencies.
1.  Run `composer install` **within `php` container** to install
    project dependencies.
1.  Clone the module project into the core modules directory:
    ```bash
    git clone git@github.com:semkulich/ckeditor_axe.git \ 
    web/core/modules/ckeditor_axe
    ```
    It's important to place `web/core/modules/ckeditor_axe` as the core nodejs
    configuration and dependencies are required for the maintenance of the
    module project and it affect only the `web/core` directory.
1.  Use web UI installer or just run the drush site install command **within
    `php` container**: `docker si demo_umami -y --account-pass=admin`
1.  Install the `ckeditor_axe` module from the UI or just executing drush
    command within `php` container: `drush en ckeditor_axe`

## NOTES

Recommended to rerun `node` container or just call `docker-compose up` again
to apply the nodejs configuration that available only after the first call of the
`composer install` command.
