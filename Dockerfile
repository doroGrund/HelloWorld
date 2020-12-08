FROM mcr.microsoft.com/dotnet/runtime:3.1
COPY out/ App/
WORKDIR /App
ENTRYPOINT ["dotnet", "HelloWorld.dll"]
#docker run --rm -v $(pwd):/app -w /app mcr.microsoft.com/dotnet/sdk:5.0 dotnet publish -c release -o out
#docker build -t helloworld_docker .
#docker run -it --rm helloworld_docker