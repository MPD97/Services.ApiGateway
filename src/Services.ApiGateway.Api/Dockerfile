FROM mcr.microsoft.com/dotnet/sdk:5.0 AS build
WORKDIR /publish
COPY . . 
RUN dotnet publish ./Services.ApiGateway.sln -c release -o out

FROM mcr.microsoft.com/dotnet/aspnet:5.0
WORKDIR /app
COPY --from=build /publish/out .
ENV ASPNETCORE_ENVIRONMENT local_docker
ENV NTRADA_CONFIG ntrada.local_docker.yml
ENV ASPNETCORE_URLS http://*:5009
ENTRYPOINT dotnet Services.ApiGateway.Api.dll