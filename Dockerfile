FROM debian

EXPOSE 80

ADD docker/setup.sh setup.sh
ADD docker/start.sh start.sh

RUN sh setup.sh
CMD sh start.sh
