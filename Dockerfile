FROM nginx:1.27.0 

RUN apt-get update && apt-get install --no-install-recommends -y procps \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

COPY index.html /usr/share/nginx/html/

EXPOSE 80 443 	

CMD ["nginx", "-g", "daemon off;"]
