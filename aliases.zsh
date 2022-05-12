# PYTHON
##############

alias python='docker run --rm -it -u $UID:$UID python:3-alpine python'

# PHP
###############

alias php73='docker run --rm -it -v $(pwd):/app -w /app -u $UID:$UID tuzex/php:7.3-cli php'
alias php74='docker run --rm -it -v $(pwd):/app -w /app -u $UID:$UID tuzex/php:7.4-cli php'
alias php8='docker run --rm -it -v $(pwd):/app -w /app -u $UID:$UID tuzex/php:8.0-cli php'
alias php81='docker run --rm -it -v $(pwd):/app -w /app -u $UID:$UID tuzex/php:8.1-cli php'
alias php="php81"

## Debuging

alias php8x='docker run --rm -it -v $(pwd):/app -w /app -u $UID:$UID tuzex/php:8.0-cli--dev php'
alias php81x='docker run --rm -it -v $(pwd):/app -w /app -u $UID:$UID tuzex/php:8.1-cli--dev php'
alias phpx="php81x"

## Dependency

alias composer1='docker run --rm -it -v $(pwd):/app -w /app -u $UID:$UID tuzex/composer:1 composer'
alias composer='docker run --rm -it -v $(pwd):/app -w /app -u $UID:$UID tuzex/composer:2 composer'

## Security

alias security-checker='docker run --rm -it -v $(pwd):/app -w /app symfonycorp/cli check:security'

## Testing

alias phpunit='docker run --rm -it -v $(pwd):/app -w /app -u $UID:$UID tuzex/php:8.0-cli vendor/bin/phpunit -c phpunit.xml'
alias phpstan='docker run --rm -it -v $(pwd):/app -w /app -u $UID:$UID tuzex/php:8.0-cli vendor/bin/phpstan analyse -c phpstan.neon --memory-limit=-1'
alias codecept='docker run --rm -it -v $(pwd):/app -w /app -u $UID:$UID tuzex/php:8.0-cli vendor/bin/codecept'
alias ecs='docker run --rm -it -v $(pwd):/app -w /app -u $UID:$UID tuzex/php:8.0-cli vendor/bin/ecs check -c ecs.php'

# NODE
###############

alias dnode='docker run --rm -it -v $(pwd):/app:delegated -w /app -u $UID:$UID node:18'

## Dependency

alias npm='dnode npm'
alias npm:8080='docker run --rm -it -v $(pwd):/app -w /app -u $UID:$UID -p 8080:8080 node:18 npm'
alias npm:3000='docker run --rm -it -v $(pwd):/app -w /app -u $UID:$UID -p 3000:3000 node:18 npm'

alias npx='dnode npx'
alias npx:1337='docker run --rm -it -v $(pwd):/app -w /app -u $UID:$UID -p 8080:8080 node:18 npx'

alias yarn='dnode yarn'
alias yarn:8080='docker run --rm -it -v $(pwd):/app -w /app -u $UID:$UID -p 8080:8080 node:18 yarn'
alias yarn:3000='docker run --rm -it -v $(pwd):/app -w /app -u $UID:$UID -p 3000:3000 node:18 yarn'

# TYPESCRIPT
###############

alias tsc='docker run --rm -it -v $(pwd):/app -w /app -u $UID:$UID tsc:latest tsc'

# VUE
###############

alias vue='docker run --rm -it -v $(pwd):/app -w /app -u $UID:$UID vue:latest vue'
alias vui='docker run --rm -it -v $(pwd):/app -w /app -u $UID:$UID -p 8000:8000 vue:latest vue ui --headless --port 8000 --host 0.0.0.0'

# DOCKER
###############

## Docker compose

alias dcb='docker-compose build'
alias dcu='docker-compose up --force-recreate --remove-orphans'

alias dce='docker-compose exec'

alias dcs='docker-compose stop'
alias cdk='docker-compose kill'

## Portainer

alias portainer='docker run --name portainer --restart=always -d -p 9123:9000 -v /var/run/docker.sock:/var/run/docker.sock -v ~/.docker/data/Portainer:/data  portainer/portainer --no-auth'

# TERRAFORM
###############

alias tf='docker run --rm -it -v $(pwd):/app -w /app -u $UID:$UID hashicorp/terraform:light'

# TOOLS
###############

## Link Checker

alias linkchecker='docker run --rm -it -u $UID:$UID linkchecker/linkchecker -t 15'

## Glyph Hanger

alias glyphy='~/.docker-glyphhanger/docker-glyphhanger.sh'

## Json Server

alias jsonserver='docker run --rm -it -v $(pwd):/app -w /app -u $UID:$UID node:18 npm'
