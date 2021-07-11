  GNU nano 4.8                                                                                                             /home/edo/.oh-my-zsh/custom/aliases.zsh                                                                                                                        
# PHP
alias php73='docker run --rm -v $(pwd):/app -w /app -u $UID:$UID php:7.3-cli-alpine'
alias php74='docker run --rm -v $(pwd):/app -w /app -u $UID:$UID php:7.4-cli-alpine'

alias php8='docker run --rm -v $(pwd):/app -w /app -u $UID:$UID php:8.0.2-cli-alpine'
alias php8x='docker run --rm -v $(pwd):/app -w /app -u $UID:$UID php:8.0-cli-alpine-xdebug php' 

alias php="php8"
alias phpx="php8x"

# COMPOSER
alias composer1='docker run --rm -v $(pwd):/app -w /app -u $UID:$UID composer:1.10.20 composer'
alias composer='docker run --rm -v $(pwd):/app -w /app -u $UID:$UID composer:2.0.9 composer'

# NODE
alias node='docker run --rm -v $(pwd):/app -w /app -u $UID:$UID node:15.8-alpine3.12'

# NPM
alias npm='node npm'

# DOCKER
alias dcb='docker-compose build'
alias dcu='docker-compose up --force-recreate --remove-orphans'

alias dce='docker-compose exec'

alias dcs='docker-compose stop'
alias cdk='docker-compose kill'

# TERRAFORM
###############

alias tf='docker run --rm -it -v $(pwd):/app -w /app -u $UID:$UID hashicorp/terraform:light'
alias glyphy='~/.docker-glyphhanger/docker-glyphhanger.sh'

# SYMFONY
alias check:security='docker run --rm -v $(pwd):/app -w /app symfonycorp/cli check:security'

# TOOLS
alias phpunit='docker run --rm -v $(pwd):/app -w /app -u 1000:1000 php:8.0-cli vendor/bin/phpunit -c phpunit.xml'
alias phpstan='docker run --rm -v $(pwd):/app -w /app -u 1000:1000 php:8.0-cli vendor/bin/phpstan analyse -c phpstan.neon --memory-limit=-1'
alias ecs='docker run --rm -v $(pwd):/app -w /app -u 1000:1000 php:8.0-cli vendor/bin/ecs check -c ecs.php'
