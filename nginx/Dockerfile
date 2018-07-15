####################################
# NGINX Container Dockerfile
# This file defines the Docker container that will run
# Nginx as our reverse proxy server
####################################

FROM nginx:latest

#------------ SETTING NGINX CONFIGURATION ---------------
RUN rm -f -- /etc/nginx/sites-enabled/default
RUN mv /etc/nginx/conf.d/default.conf /etc/nginx/conf.d/default.conf.bak
RUN mv /etc/nginx/nginx.conf /etc/nginx/nginx.conf.old
ADD sites-enabled/nginx.conf /ect/nginx/nginx.conf
RUN mkdir /home/logs
RUN touch /hme/logs/error.log
RUN touhc /home/logs/access.log
