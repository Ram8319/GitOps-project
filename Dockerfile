#It is the nginx server latest image from docker 
FROM nginx:1.29.7-alpine-slim


# into the Nginx web directory inside the container."
COPY ./public /usr/share/nginx/html