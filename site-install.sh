#!/usr/bin/env bash

# Install or reinstall the demo site and enable ckeditor_axe module.
drush si demo_umami --account-pass=admin -y
drush en ckeditor_axe -y

