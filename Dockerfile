FROM alpine:edge
COPY . /install
RUN apk add --update nginx nginx-mod-http-image-filter && \
	rm -rf /var/cache/apk/* && chmod -R 777 /home && \
	echo "pid /tmp/nginx.pid;" >> /etc/nginx/nginx.conf && \
	rm -rf /etc/nginx/conf.d/* && mv /install/default.conf /etc/nginx/conf.d/default.conf && \
	mv /install/upload.conf /etc/nginx/conf.d/upload.conf && rm -rf /install 
CMD chmod 777 /home && nginx -g 'daemon off;'