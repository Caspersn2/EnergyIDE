FROM mcr.microsoft.com/dotnet/aspnet:5.0-buster-slim AS base
WORKDIR /app

FROM mcr.microsoft.com/dotnet/sdk:5.0-buster-slim AS build
WORKDIR /src

COPY ./Libraries Libraries/
COPY ./MeasurementTesting MeasurementTesting/
RUN dotnet restore "MeasurementTesting/MeasureTestingServer/MeasureTestingServer.csproj"

WORKDIR "/src/MeasurementTesting/MeasureTestingServer"
RUN dotnet build "MeasureTestingServer.csproj" -c Release -o /app/build

FROM build AS publish
RUN dotnet publish "MeasureTestingServer.csproj" -c Release -o /app/publish

FROM base AS final
WORKDIR /app
COPY --from=publish /app/publish .
ENTRYPOINT ["dotnet", "MeasureTestingServer.dll", "--urls", "http://*:5000"]
