FROM qiyutech/vps_bench:latest

MAINTAINER dev@qiyutech.tech

SHELL ["bash", "-c"]

COPY entrypoint.sh /app/entrypoint.sh
RUN chmod a+x /app/entrypoint.sh

WORKDIR /app

CMD ["bash", "/app/entrypoint.sh"]
