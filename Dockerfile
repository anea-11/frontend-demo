FROM nginx:1.25.2
COPY ./index.html.template /templates
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
