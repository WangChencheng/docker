FROM --platform=linux/amd64 m.daocloud.io/docker.io/library/golang:1.22.2 as base

WORKDIR /opt
RUN git clone --branch v0.15.0 https://github.com/prometheus-community/postgres_exporter.git
ADD postgresql-exporter /opt/postgres_exporter
RUN cd postgres_exporter && make build

FROM quay.io/prometheus/busybox-linux-amd64:latest
COPY --from=base /opt/postgres_exporter/postgres_exporter /bin/postgres_exporter

EXPOSE     9187
USER       nobody
ENTRYPOINT [ "/bin/postgres_exporter" ]
