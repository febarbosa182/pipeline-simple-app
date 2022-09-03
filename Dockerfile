FROM node:18
WORKDIR /usr/local/app
COPY package.json package-lock.json ./
RUN npm install

COPY ./ ./
RUN npm run build

FROM nginx:alpine
COPY --from=0  usr/local/app/dist/pipeline-simple-app/ /usr/share/nginx/html