FROM nginx:alpine
RUN rm -f .npmrc
COPY .npmrc .npmrc
COPY /dist/webapp /usr/share/nginx/html
EXPOSE 80
