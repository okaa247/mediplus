# get a base image from docker hub
FROM nginx:latest

RUN rm -rf /usr/share/nginx/html

#define working directory
WORKDIR /usr/share/nginx/html

# copy from host to container
COPY . /usr/share/nginx/html

# expose port
EXPOSE 80

CMD ["nginx", "-g", "daemon off;"]
