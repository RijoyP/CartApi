FROM mcr.microsoft.com/dotnet/sdk:5.0
RUN dotnet publish --configuration Release --output build
COPY build/ App/
WORKDIR /App
ENTRYPOINT ["dotnet", "cart-api.dll"]
