#!/usr/bin/env bash

function in_container () { docker-compose exec -T php bash -c "$@"; }
# Install or reinstall the demo site and enable ckeditor_axe module.
in_container "composer install"
in_container "composer update drupal/core webflo/drupal-core-require-dev 'symfony/*' --with-dependencies"
git clone git@github.com:semkulich/ckeditor_axe.git web/core/modules/ckeditor_axe
in_container "drush si demo_umami --account-pass=admin -y"
in_container "drush en ckeditor_axe -y"
in_container "drush uli"
