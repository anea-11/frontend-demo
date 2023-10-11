FROM nginx:1.25.2
COPY ./index.html.template /templates/index.html.template
COPY ./00-populate-templates.sh /docker-entrypoint.d
COPY ./nginx.conf /etc/nginx/conf.d/default.conf
