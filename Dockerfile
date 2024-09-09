FROM ubuntu:16.04
WORKDIR /opt
RUN apt-get update && apt-get install -y wget
RUN wget -O scala-SDK-4.7.1-rc3-2.12-win32.win32.x86_64.zip https://github.com/scala-ide/scala-ide/releases/download/4.7.1-rc3/scala-SDK-4.7.1-rc3-2.12-win32.win32.x86_64.zip
