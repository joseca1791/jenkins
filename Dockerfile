FROM microsoft/windowsservercore
FROM microsoft/aspnet
LABEL maintainer="josecbarrantes@hotmail.com"
RUN dism.exe /online /enable-feature /all /featurename:iis-webserver /NoRestart
RUN powershell Install-WindowsFeature Web-Mgmt-Service
RUN powershell Install-WindowsFeature Web-Windows-Auth
RUN powershell Install-WindowsFeature NET-Framework-45-ASPNET
RUN powershell Install-WindowsFeature Web-Asp-Net45
RUN powershell Install-WindowsFeature NET-WCF-HTTP-Activation45
RUN net start wmsvc
COPY ./PublishOutput /inetpub/wwwroot
EXPOSE 8082
EXPOSE 443
EXPOSE 80
RUN icacls "C:\inetpub/wwwroot\*" /grant "NT AUTHORITY\NetworkService":F /T
RUN iisreset