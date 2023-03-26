FROM mcr.microsoft.com/dotnet/sdk:7.0 as build

RUN dotnet workload install wasm-tools

WORKDIR /app

COPY . ./

RUN apt update && \
    apt install -y unzip

RUN curl -fsSL https://deb.nodesource.com/setup_18.x | bash && \
    apt-get install -y nodejs

RUN dotnet publish --configuration Release

FROM nginx

LABEL org.opencontainers.image.source=https://github.com/marklechtermann/wasm_dotnet

COPY --chown=nginx:nginx --from=build /app/bin/Release/net7.0/browser-wasm/AppBundle/ /usr/share/nginx/html
