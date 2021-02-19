# Developer: TriuHv <ms@ngacareer.com>
#
# GitHub:   https://github.com/ngacareer
# Twitter:  https://twitter.com/ngacareer
# Docker:   https://hub.docker.com/ngacareer
# Facebook: https://facebook.com/ngacareer 
# Linkedin: https://www.linkedin.com/in/ngacareer/
# website:  https://ngacareer.com

FROM ngacareer/alpine-curl

ENV GO_VERSION 1.16
RUN apk add --no-cache --virtual .build-deps bash gcc musl-dev openssl go 
RUN curl -O go$GO_VERSION.linux-amd64.tar.gz -L https://golang.org/dl/go$GO_VERSION.linux-amd64.tar.gz && \
    tar -C /usr/local -zxvf go$GO_VERSION.linux-amd64.tar.gz && \
    cd /usr/local/go/src/ && \
    ./make.bash

ENV PATH="/usr/local/go/bin:$PATH"
ENV GOPATH=/opt/go/ 
ENV PATH=$PATH:$GOPATH/bin 
RUN apk del .build-deps 

RUN go version

ENTRYPOINT ["entrypoint.sh"]
RUN ["cmd"]
