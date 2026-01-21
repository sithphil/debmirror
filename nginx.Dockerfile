#FROM nginx:1.17-alpine
FROM docker.1ms.run/nginx:1.17-alpine

RUN rm /etc/nginx/conf.d/default.conf
COPY ./nginx.conf /etc/nginx/conf.d/mirror.conf
