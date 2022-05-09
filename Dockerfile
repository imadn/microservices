FROM ubuntu
MAINTAINER imadn (imad.noui@gmail.com)
#RUN apt-get update
RUN apt-get update --allow-releaseinfo-change
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y nginx git 
EXPOSE 80
RUN rm -rf /var/www/html/*
RUN git clone https://github.com/diranetafen/static-website-example /var/www/html/
#ADD static-website-example/ /var/www/html/
ENTRYPOINT ["usr/sbin/nginx", "-g", "daemon off;"]
