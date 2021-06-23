FROM azul/zulu-openjdk-alpine:16.0.0
RUN mkdir /app
RUN mkdir /app/plugins
ADD ./scripts/start.sh /app
ADD ./scripts/eula.txt /app
ADD ./temp/paper-1.17.jar /app
ADD ./plugins /app/plugins
WORKDIR /app
ENTRYPOINT ["sh", "/app/start.sh"]

