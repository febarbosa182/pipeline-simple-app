FROM nginx:alpine

COPY ./dist/pipeline-simple-app/ /usr/share/nginx/html