FROM ubuntu:16.04
WORKDIR /opt
RUN apt-get update && apt-get install -y curl
RUN curl -O https://www.eclipse.org/downloads/download.php?file=/technology/epp/downloads/release/2024-06/R/eclipse-java-2024-06-R-win32-x86_64.zip
