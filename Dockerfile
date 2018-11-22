FROM ubuntu:18.04


RUN apt-get update && \
    apt-get install -y \
      pgxnclient \
      postgresql-server-dev-10 \
      wget \
      openssh-server \
      make \
      gcc \
      libssl-dev \
      zlib1g-dev \
      libpq-dev

RUN pgxn install pg_repack==1.4.2 \
  && ln -s /usr/lib/postgresql/10/bin/pg_repack /usr/bin 