FROM microsoft/windowsservercore
FROM microsoft/aspnet
LABEL maintainer="josecbarrantes@hotmail.com"
RUN dism.exe /online /enable-feature /all /featurename:iis-webserver /NoRestart
COPY ./bin/release/PublishOutput /inetpub/wwwroot
EXPOSE 8082