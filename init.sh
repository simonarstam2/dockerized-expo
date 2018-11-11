#!/bin/sh

# https://stackoverflow.com/questions/37089162/docker-compose-volume-mount-before-run

echo initializing...

if [ "$DO_NPM_INSTALL" = "true" ]; then
    eval npm install --prefix /home/expo-app
fi

if [ "$USE_EXPO_ACCOUNT" = "true" ]; then
    eval expo login -u $EXPO_USER -p $EXPO_PASS 
fi

echo before start expo start

if [ "$USE_SEND_TO" = "true" ]; then
    echo SELECTED email/phone: $EXPO_SEND_TO 
    eval expo start --send-to $EXPO_SEND_TO --tunnel
else
    eval expo start --tunnel
fi

echo after start expo start

return 0