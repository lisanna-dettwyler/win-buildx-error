# escape=`

FROM mcr.microsoft.com/dotnet/framework/runtime:4.8

SHELL ["powershell"]
RUN [System.Net.ServicePointManager]::SecurityProtocol = [System.Net.ServicePointManager]::SecurityProtocol -bor 3072; `
    wget -Uri https://aka.ms/vs/16/release/vs_buildtools.exe -OutFile vs_buildtools.exe