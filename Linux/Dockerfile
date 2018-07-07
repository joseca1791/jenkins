FROM alpine
LABEL maintainer="Jose Carlos"
RUN apk add --update nodejs nodejs-npm
RUN npm cache clean --force
COPY . /src
WORKDIR /src 
RUN npm install -g npm
EXPOSE 8083
ENTRYPOINT ["node","./hola.html"]