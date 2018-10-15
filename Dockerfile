FROM nginx:alpine
WORKDIR /usr/share/nginx/html
COPY dist .
RUN rm -f /etc/nginx/conf.d/default.conf
ADD default.conf /etc/nginx/conf.d
