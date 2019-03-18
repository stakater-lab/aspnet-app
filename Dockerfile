FROM mcr.microsoft.com/dotnet/core/aspnet:2.2-alpine AS runtime
WORKDIR /app
COPY aspnetapp/out ./
ENTRYPOINT ["dotnet", "aspnetapp.dll"]
