FROM microsoft/windowsservercore
FROM microsoft/aspnet
LABEL maintainer="josecbarrantes@hotmail.com"
RUN dism.exe /online /enable-feature /all /featurename:iis-webserver /NoRestart
RUN net start wmsvc
COPY ./PublishOutput /inetpub/wwwroot
EXPOSE 8082
EXPOSE 443
EXPOSE 80
RUN icacls "C:\inetpub/wwwroot\*" /grant "IIS_IUSRS":F /T
RUN iisreset