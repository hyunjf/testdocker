#大小最小的linux版本alpine，约5M
FROM alpine:latest
MAINTAINER dengjifen deng_jifen@163.com

#apk 必须update ，要不然apk 指令使用不正常
RUN apk update
RUN apk add openjdk7

RUN apk add tzdata && \
ln -sf /usr/share/zoneinfo/Asia/Shanghai /etc/localtime && \
echo "Asia/Shanghai" > /etc/timezone