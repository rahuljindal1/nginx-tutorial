FROM nginx:latest

EXPOSE 80

RUN apt-get update
RUN apt-get -y install inotify-tools

COPY ./nginx/nginx-reload.sh /etc/nginx/nginx-reload.sh

RUN chmod +x /etc/nginx/nginx-reload.sh

CMD ["nginx", "-g", "daemon off;"]