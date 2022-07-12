FROM alpine:latest
LABEL maintainer="217heidai"
LABEL name="brook_server"
ENV TZ=Asia/Shanghai
ENV listen_port=""
ENV password=""

COPY brook_linux_amd64 /
RUN set -ex; \
	mkdir /opt/brook; \
	mv /brook_linux_amd64 /opt/brook/; \
	chmod a+x /opt/brook/brook_linux_amd64; \
	ln -s /opt/brook/brook_linux_amd64 /bin/brook; \
	ln -snf /usr/share/zoneinfo/$TZ /etc/localtime; \
	echo $TZ > /etc/timezone
ENTRYPOINT ["sh","-c","brook server --listen :$listen_port --password $password"]
