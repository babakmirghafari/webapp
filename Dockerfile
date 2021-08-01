FROM nginx:alpine
COPY .npmrc .npmrc
COPY package.json package.json
RUN npm install
RUN rm -f .npmrc
COPY /dist/webapp /usr/share/nginx/html
EXPOSE 80
