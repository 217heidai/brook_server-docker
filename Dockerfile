FROM centos:7.9.2009
LABEL maintainer="217heidai"
LABEL name="brook"
ENV TZ=Asia/Shanghai
ENV VERSION=v20210101
ENV password=""

COPY brook_linux_amd64 /tmp/
RUN set -ex; \
	mkdir /opt/brook; \
	cp -rf /tmp/brook_linux_amd64 /opt/brook/; \
	rm -rf /tmp/brook_linux_amd64; \
	chmod a+x /opt/brook/brook_linux_amd64; \
	ln -s /opt/brook/brook_linux_amd64 /bin/brook; \
	ln -snf /usr/share/zoneinfo/$TZ /etc/localtime; \
	echo $TZ > /etc/timezone
EXPOSE 9999
ENTRYPOINT ["sh","-c","brook server -l :9999 -p $password"]