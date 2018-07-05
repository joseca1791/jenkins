FROM microsoft/windowsservercore
FROM microsoft/aspnet
LABEL maintainer="josecbarrantes@hotmail.com"
RUN dism.exe /online /enable-feature /all /featurename:iis-webserver /NoRestart
COPY ./PublishOutput /inetpub/wwwroot
EXPOSE 58780