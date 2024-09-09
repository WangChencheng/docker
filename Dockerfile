FROM ubuntu:16.04
WORKDIR /opt
RUN apt-get update && apt-get install -y wget
RUN wget -O scala-plugin.zip http://download.scala-ide.org/sdk/lithium/e47/scala212/stable/update-site.zip
