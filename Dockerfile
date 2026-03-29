#It is the nginx server latest image from docker 
From nginx:latest


# This tells Docker: "Go into the 'public' folder and copy everything
# into the Nginx web directory inside the container."
COPY ./public /usr/share/nginx/html