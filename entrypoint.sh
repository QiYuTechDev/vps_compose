#!/usr/bin/env bash

set -e

export VPS_JOB=`vps_bench job`
echo "任务ID: ${VPS_JOB}"
vps_bench quick --mem-size=${MEM_SIZE:=1024} --cpu-n=${CPU_N:=10} --disk-n=${DISK_N:=1} --sqlite-n=${SQLITE_N:=1} --out-dir=/data --disk-file-name=/data/test.db --job-id=$VPS_JOB
vps_network quick --job-id=$VPS_JOB --out-dir=/data
echo "访问: https://vps.qiyutech.tech/bench/report/${VPS_JOB} 查看测试结果"
