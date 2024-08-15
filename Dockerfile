FROM ubuntu:16.04
WORKDIR /opt
RUN apt-get update && apt-get install -y wget
RUN wget -O eclipse-java-2023-12-R-win32-x86_64.zip https://archive.eclipse.org/technology/epp/downloads/release/2023-12/R/eclipse-java-2023-12-R-win32-x86_64.zip
