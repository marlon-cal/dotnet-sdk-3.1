FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
#I have created a app folder
WORKDIR /app
EXPOSE 9090
FROM mcr.microsoft.com/dotnet/core/sdk:3.1-buster
#Copy here the publish folder inside the container
COPY <source file path> <destination file path inside the container>
#This environment variable has to be set and URL
ENV ASPNETCORE_ENVIRONMENT=<your env name (appsettings name)>
ENV ASPNETCORE_URLS=http://+:9090
#im changing the directory
WORKDIR /app
#entery point where app runs
ENTRYPOINT ["dotnet", "<dll file here>"]