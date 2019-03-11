FROM debian:buster-slim

RUN apt-get update && apt-get install mc -y

CMD mc