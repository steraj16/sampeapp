# https://hub.docker.com/_/microsoft-dotnet-core
FROM mcr.microsoft.com/dotnet/core/sdk:3.1 AS build
WORKDIR /source

# copy csproj and restore as distinct layers
COPY *.sln .
COPY SampleWebApp/*.csproj ./SampleWebApp/
COPY UnitTest1/*.csproj ./UnitTest1/
RUN dotnet restore

# copy everything else and build app
COPY SampleWebApp/. ./SampleWebApp/
COPY UnitTest1/. ./UnitTest1/
WORKDIR /source/SampleWebApp
RUN dotnet publish -c release -o /app --no-restore

# final stage/image
FROM mcr.microsoft.com/dotnet/core/aspnet:3.1
WORKDIR /app
COPY --from=build /app ./
ENTRYPOINT ["dotnet", "SampleWebApp.dll"]
