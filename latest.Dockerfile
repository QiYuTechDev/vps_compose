FROM qiyutech/vps_bench:latest

MAINTAINER dev@qiyutech.tech

COPY entrypoint.sh /app/entrypoint.sh
RUN chmod a+x /app/entrypoint.sh

WORKDIR /app

ENTRYPOINT /app/entrypoint.sh
