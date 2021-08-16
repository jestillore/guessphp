#!/usr/bin/env sh

PHP80="/usr/local/Cellar/php/8.0.9/bin/php"
PHP74="/usr/local/Cellar/php@7.4/7.4.22/bin/php"
PHP72="/usr/local/Cellar/php@7.2/7.2.34_4/bin/php"
PHP="/usr/local/bin/php"

CWD=$('pwd')
FILE="${CWD}/composer.json"

if [ -f "$FILE" ]; then
    VERSION=$(jq '.require.php' composer.json)
    if [ -n "$VERSION" ]; then
        case "$VERSION" in
            *8.0*) PHP=$PHP80 ;;
            *7.4*) PHP=$PHP74 ;;
            *7.2*) PHP=$PHP72 ;;
        esac
    fi
fi

$PHP "$@"
