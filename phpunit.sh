#!/usr/bin/env bash

docker-compose exec -T php bash -c 'vendor/bin/phpunit --group ckeditor_axe -c web/core/phpunit.xml.dist --bootstrap web/core/tests/bootstrap.php -v'
