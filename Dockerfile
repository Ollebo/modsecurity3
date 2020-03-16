from ubuntu
RUN apt-get update && apt-get install nginx -y
RUN apt-get install software-properties-common -y
RUN add-apt-repository ppa:phusion.nl/misc
RUN apt-get update && apt install libnginx-mod-http-modsecurity -y

RUN mkdir /var/modsecurity
RUN chmod 777 /var/modsecurity




COPY ./run.sh /run.sh
RUN chmod 777 /run.sh
CMD /run.sh

