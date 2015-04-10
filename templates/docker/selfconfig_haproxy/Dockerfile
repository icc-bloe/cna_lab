FROM ubuntu:14.04

RUN apt-get update && apt-get -y install \
	wget \
	haproxy && \
	sed -i s/ENABLED=0/ENABLED=1/g /etc/default/haproxy && \
	wget https://github.com/kelseyhightower/confd/releases/download/v0.7.1/confd-0.7.1-linux-amd64 --no-check-certificate && \
	mv confd-0.7.1-linux-amd64 /usr/local/bin/confd && \
	chmod u+x /usr/local/bin/confd && \
	mkdir -p /etc/confd/conf.d /etc/confd/templates

COPY haproxy.cfg /etc/haproxy/haproxy.cfg
COPY haproxy.toml /etc/confd/conf.d/haproxy.toml
COPY haproxy.cfg.tmpl /etc/confd/templates/haproxy.cfg.tmpl
COPY haproxy.conf /etc/rsyslog.d/haproxy.conf

COPY start.sh /start.sh
RUN chmod +x /start.sh

EXPOSE 80 1936
CMD /start.sh

