FROM ghcr.io/qiyutechdev/vps_bench:v0.4.2

ARG VERSION=v0.4.2

# docker hub 官方
# qiyutech/vps_bench:$VERSION
# ghcr 镜像
# ghcr.io/qiyutechdev/vps_bench:$VERSION
# 阿里云 镜像
# registry.cn-hangzhou.aliyuncs.com/qiyutech/vps_bench:$VERSION

MAINTAINER dev@qiyutech.tech

SHELL ["bash", "-c"]

COPY entrypoint.sh /app/entrypoint.sh
RUN chmod a+x /app/entrypoint.sh

WORKDIR /app

CMD ["bash", "/app/entrypoint.sh"]
