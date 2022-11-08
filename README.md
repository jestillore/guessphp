# GuessPHP

Run the same `php` command while using different versions according to the PHP version on `.guessphp` file or `composer.json` on the current working directory.

## Software requirements

Install [`jq`](https://stedolan.github.io/jq/). If you're on MacOS, install it via `brew install jq`.

## Pre-installation Configuration

Modify `guessphp.sh` and set the locations of `php` binaries per versions. Currently supported versions are `php8`, `php7.4` and `php7.2` but other versions can be added very easily.

## Installation

Move `guessphp.sh` to `/usr/local/bin/guessphp`. You can use it as `guessphp -v` and then you can add an alias for `php` command.

## Using .guessphp file

Add a new file named `.guessphp` and set the preferred version. For example, if you wish to use PHP8.1, the content of the file should be `8.1`.
