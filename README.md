# Getting started #

## Clone repository ##
```sh
git clone https://github.com/simonarstamtesting2/dockerized-expo
```

## .env ##
```sh
EXPO_USER=username
EXPO_PASSWORD=pass
# e-mail or phone
SEND_TO=example@example.com

COMPOSE_CONVERT_WINDOWS_PATHS=1
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