FROM microsoft/iis
SHELL ["powershell"]
COPY index.html "C:\inetpub\wwwroot"
#RUN New-Item "C:\inetpub\wwwroot\index.html" -ItemType File
#RUN echo "Hello World - Dockerfile Test02" > C:\inetpub\wwwroot\index.html
#RUN Set-Content "C:\inetpub\wwwroot\index.html" "This is a website which are developed by docker" -Force
EXPOSE 80
#CMD ["ping", "-t", "localhost"]
ENTRYPOINT [ "ServiceMonitor.exe", "w3svc" ]
