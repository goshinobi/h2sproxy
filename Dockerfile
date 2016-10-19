FROM alpine:latest

RUN apk add --no-cache ca-certificates 

Add build/h2s /usr/bin/h2s

RUN mkdir -p /h2s

WORKDIR /h2s

ENTRYPOINT ["h2s"]

CMD ["-h"]
