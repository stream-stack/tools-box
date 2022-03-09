FROM ccr.ccs.tencentyun.com/qcloud/ubuntu:latest
COPY tmp/raftadmin /

CMD ["/raftadmin"]
