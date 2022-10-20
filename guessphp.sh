#!/usr/bin/env sh

PHP80="/usr/local/Cellar/php/8.0.9/bin/php"
PHP74="/usr/local/Cellar/php@7.4/7.4.22/bin/php"
PHP72="/usr/local/Cellar/php@7.2/7.2.34_4/bin/php"
PHP="/usr/local/bin/php"

CWD=$('pwd')
FILE="${CWD}/.guessphp"
if [ -f "$FILE" ]; then
    VERSION=$(cat "$FILE")
fi

if [ -z "$VERSION" ]; then
    VERSION=$(jq '.require.php' composer.json)
fi

if [ -n "$VERSION" ]; then
    case "$VERSION" in
        *8.0*) PHP=$PHP80 ;;
        *7.4*) PHP=$PHP74 ;;
        *7.2*) PHP=$PHP72 ;;
    esac
fi

$PHP "$@"
