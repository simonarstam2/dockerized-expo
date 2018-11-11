FROM node:8.12

ADD init.sh /home

RUN chmod 777 /home/init.sh
# RUN chown root /home/init.sh

# https://willi.am/blog/2016/08/11/docker-for-windows-dealing-with-windows-line-endings/

RUN apt-get update && apt-get install -y dos2unix
RUN dos2unix /home/init.sh && apt-get --purge remove -y dos2unix && rm -rf /var/lib/apt/lists/*

RUN mkdir -p /home/expo-app 
WORKDIR /home/expo-app

RUN npm set progress=true && \
    npm install -g expo-cli

EXPOSE 19000
EXPOSE 19001
EXPOSE 19002

CMD [ "sh", "-c", "/home/init.sh" ]

# ENTRYPOINT [ "tail", "-f", "/dev/null" ]

