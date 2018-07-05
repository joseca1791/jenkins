FROM microsoft/windowsservercore
FROM microsoft/aspnet
LABEL maintainer="josecbarrantes@hotmail.com"
RUN dism.exe /online /enable-feature /all /featurename:iis-webserver /NoRestart
COPY ./OdeToFood/OdeToFood/bin/PublishOutput /inetpub/wwwroot
EXPOSE 8082
EXPOSE 43
EXPOSE 80