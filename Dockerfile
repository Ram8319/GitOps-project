#It is the nginx server latest image from docker 
FROM nginx:1.29.7-alpine-slim

# The FIX: Update the package manager and upgrade zlib to the safe version
 #RUN apk update && apk add --no-available --upgrade zlib

# This tells Docker: "Go into the 'public' folder and copy everything
# into the Nginx web directory inside the container."
COPY ./public /usr/share/nginx/html