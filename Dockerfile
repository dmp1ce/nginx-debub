FROM nginx
MAINTAINER David Parrish <daveparrish@tutanota.com>

RUN apt-get update && \
    apt-get install -y nginx-debug=${NGINX_VERSION} && \
    rm -rf /var/lib/apt/lists/*

CMD ["nginx.debug", "-g", "daemon off;"]
