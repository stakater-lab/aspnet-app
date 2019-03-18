FROM mcr.microsoft.com/dotnet/core/aspnet:2.2-alpine AS runtime
WORKDIR /app
RUN ls -la
RUN pwd
COPY aspnet-app/aspnetapp/out ./
ENTRYPOINT ["dotnet", "aspnetapp.dll"]
