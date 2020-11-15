FROM microsoft/iis
SHELL ["powershell"]
RUN New-Item "C:\inetpub\wwwroot\index.html" -Type File
RUN Set-Content C:\inetpub\wwwroot\index.html "This is a website which are developed by docker"
