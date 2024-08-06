ARG ARCH
ARG OS="linux"
FROM --platform=linux/$ARCH m.daocloud.io/docker.io/library/golang:1.22.2 as base

WORKDIR /opt
#RUN git clone --branch v0.15.0 https://github.com/prometheus-community/postgres_exporter.git
ADD postgres_exporter-master /opt/postgres_exporter
ADD postgresql-exporter /opt/postgres_exporter
RUN cd postgres_exporter && make build

FROM quay.io/prometheus/busybox-${OS}-${ARCH}:latest
FROM registry.ispeco.com/supermap/kingbasees-exporter:1.0-amd64
COPY --from=base /opt/postgres_exporter/postgres_exporter /bin/postgres_exporter

EXPOSE     9187
USER       nobody
ENTRYPOINT [ "/bin/postgres_exporter" ]
