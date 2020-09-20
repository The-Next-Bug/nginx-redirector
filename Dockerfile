FROM nginx

EXPOSE 80

ENV REDIRECTOR_NAME=localhost
ENV REDIRECTOR_TARGET=https://example.com
ENV REDIRECTOR_TYPE=redirect

COPY templates /etc/nginx/templates
