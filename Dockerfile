FROM nginx:1.14-alpine
ADD proxy.conf /etc/nginx/conf.d/default.template
COPY run.sh /
RUN chmod +x /run.sh
COPY build /etc/nginx/html
EXPOSE 80
ENTRYPOINT /run.sh
