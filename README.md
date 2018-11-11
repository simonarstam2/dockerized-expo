# Getting started #

## Clone repository ##
```sh
git clone https://github.com/simonarstamtesting2/dockerized-expo
```

## .env ##
```sh
# Set to true to use expo account
USE_EXPO_ACCOUNT=false

# expo account details.
EXPO_USER=user
EXPO_PASS=pass

# Change to true if you want to exp url to sent with mail or sms.
USE_SEND_TO=false

# Your e-mail or phone number.
EXPO_SEND_TO=email

# run npm install
DO_NPM_INSTALL=false

# Other
COMPOSE_CONVERT_WINDOWS_PATHS=1
CHOKIDAR_USEPOLLING=true
```

## Run and build containers ##
```sh
docker-compose up --build
```

## Stop running containers ## 
```sh
docker-compose down
```

# Other useful commands #

## List all containers ##
```sh
docker ps
```

## List ID of all containers ##
```sh
docker ps -aq
```

## Open bash in active container ##
```sh
docker exec -it CONTAINER_ID /bin/bash
```

## Stops and removes all containers ##
```sh
docker stop $(docker ps -aq) ; docker rm $(docker ps -aq)
```

## Remove all images ##
```sh
docker rmi $(docker images -aq)
```