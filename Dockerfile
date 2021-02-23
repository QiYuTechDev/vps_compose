FROM registry.cn-hangzhou.aliyuncs.com/qiyutech/vps_bench:v0.2.12

MAINTAINER dev@qiyutech.tech

# docker hub 官方
# qiyutech/vps_bench:v0.2.12
# ghcr 镜像
# ghcr.io/qiyutechdev/vps_bench:v0.2.12
# 阿里云 镜像
# registry.cn-hangzhou.aliyuncs.com/qiyutech/vps_bench:v0.2.12

COPY entrypoint.sh /app/entrypoint.sh
RUN chmod a+x /app/entrypoint.sh

WORKDIR /app

ENTRYPOINT /app/entrypoint.sh
