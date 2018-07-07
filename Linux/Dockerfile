FROM alpine
LABEL maintainer="Jose Carlos"
RUN apk add --update nodejs nodejs-npm
COPY . /src
WORKDIR /src 
RUN npm install
EXPOSE 8083
ENTRYPOINT ["node","./hola.html"]