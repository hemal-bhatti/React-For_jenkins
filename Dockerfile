FROM node:20-alpine

WORKDIR /app

RUN apk add --no-cache nginx bash

COPY package*.json ./

RUN npm install

COPY /nginx/nginx.conf /etc/nginx/nginx.conf

COPY start.sh /start.sh

COPY .  .

RUN npm run build && npm install -g serve

RUN chmod +x /start.sh

EXPOSE 80

CMD ["/start.sh"]




















# FROM alpine:latest as builder

# WORKDIR /frontend-build

# RUN apk update && apk add nodejs npm

# COPY package*.json .

# RUN npm install

# COPY . .

# RUN npm run build

# FROM alpine:latest

# RUN apk update && apk add nginx

# COPY --from=builder frontend-build/nginx/nginx.conf etc/nginx/http.d/default.conf

# WORKDIR /var/www/frontend

# COPY --from=builder frontend-build/dist/ .

# EXPOSE 80

# CMD [ "start.sh" ]

