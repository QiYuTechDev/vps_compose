FROM registry.cn-hangzhou.aliyuncs.com/qiyutech/vps_bench:v0.3.2

MAINTAINER dev@qiyutech.tech

# docker hub 官方
# qiyutech/vps_bench:v0.3.2
# ghcr 镜像
# ghcr.io/qiyutechdev/vps_bench:v0.3.2
# 阿里云 镜像
# registry.cn-hangzhou.aliyuncs.com/qiyutech/vps_bench:v0.3.2

COPY entrypoint.sh /app/entrypoint.sh
RUN chmod a+x /app/entrypoint.sh

WORKDIR /app

ENTRYPOINT /app/entrypoint.sh
