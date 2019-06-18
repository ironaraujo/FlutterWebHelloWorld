FROM nginx

EXPOSE 8080

WORKDIR /usr/share/nginx/html

COPY ./build .
