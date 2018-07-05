FROM microsoft/windowsservercore
FROM microsoft/aspnet
LABEL maintainer="josecbarrantes@hotmail.com"
RUN dism.exe /online /enable-feature /all /featurename:iis-webserver /NoRestart
RUN NET USER testing "Welcome1" /ADD
RUN NET LOCALGROUP "Administrators" "testing" /add
RUN icacls "C:\IIS\*" /grant everyone:(OI)(CI)F /T
RUN powershell Install-WindowsFeature Web-Mgmt-Service
RUN powershell Install-WindowsFeature Web-Windows-Auth
RUN powershell Install-WindowsFeature NET-Framework-45-ASPNET
RUN powershell Install-WindowsFeature Web-Asp-Net45
RUN powershell Install-WindowsFeature NET-WCF-HTTP-Activation45
RUN net start wmsvc
RUN sc config WMSVC start= auto
COPY ./PublishOutput /inetpub/wwwroot
EXPOSE 58780