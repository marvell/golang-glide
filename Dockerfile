FROM golang:1.5.3

ENV GLIDE_VERSION 0.8.3
RUN set -xe && \
	curl -Ls https://github.com/Masterminds/glide/releases/download/${GLIDE_VERSION}/glide-${GLIDE_VERSION}-linux-amd64.tar.gz | tar -xz --strip-components=1 -C /tmp && \
	mv /tmp/glide /usr/local/bin/ && \
	rm -rf /tmp/*
