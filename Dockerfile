FROM ubuntu:jammy

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG=C.UTF-8
ENV LC_ALL=C.UTF-8
ENV PYTHONIOENCODING=utf-8

RUN apt-get update && apt-get install -y \
    libc6 \
    libstdc++6 \
    && rm -rf /var/lib/apt/lists/*

WORKDIR /app

COPY . /app

RUN chmod +x AdityaHalder.bin
CMD ["./AdityaHalder.bin"]
