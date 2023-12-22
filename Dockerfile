FROM mcr.microsoft.com/dotnet/core/runtime:2.1
WORKDIR /app
COPY ./server .

EXPOSE 4296/udp
EXPOSE 4296/tcp
EXPOSE 10666
ENV ASPNETCORE_URLS=http://*:10666
ENTRYPOINT [ "dotnet",  "Lib/DarkRift.Server.Console.dll" ]