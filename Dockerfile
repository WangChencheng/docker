FROM registry.cn-beijing.aliyuncs.com/supermap/gisapplication:11.3.0-amd64
RUN apt-get update && apt-get install -y libxcb-shm0 libasound2 libpulse0
