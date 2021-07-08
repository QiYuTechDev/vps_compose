#!/usr/bin/env bash

set -e

if [ "A$VPS_JOB" == "A" ]; then
    VPS_JOB=$(vps_bench job)
fi

if [[ "$SKIP_BENCH" != "true" ]]; then
    echo "任务ID: ${VPS_JOB} 开始测试 ..."
    vps_bench quick \
        --mem-size="${MEM_SIZE:=1024}" \
        --cpu-n="${CPU_N:=10}" \
        --disk-n="${DISK_N:=1}" \
        --sqlite-n="${SQLITE_N:=1}" \
        --out-dir=/data \
        --disk-file-name=/data/test.db \
        --job-id="$VPS_JOB"
else
    echo "跳过 bench 测试"
fi

if [[ "$SKIP_NETWORK" != "true" ]]; then
    vps_network quick --job-id="$VPS_JOB" --out-dir=/data
    echo "任务ID: ${VPS_JOB} 测试结束"
    echo "访问: https://vps.qiyutech.tech/bench/report/${VPS_JOB} 查看测试结果"
else
    echo "跳过 网络 测试"
fi
