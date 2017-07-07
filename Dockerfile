FROM ubuntu

RUN apt-get update && apt-get install build-essential -y

WORKDIR /redis
ADD redis /redis

RUN make

CMD ["/redis/src/redis-server", "/redis/redis.conf"]

EXPOSE 6379


