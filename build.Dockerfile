FROM ieee0824/golang:1.7.2

RUN mkdir -p /go
RUN mkdir -p /build
ENV GOPATH /go
ENV GOOS linux
ENV GOARCH amd64
ENV CGO_ENABLED 0

RUN go get github.com/goshinobi/h2sproxy/cmd/h2s

WORKDIR /build

CMD ["build" ,"github.com/goshinobi/h2sproxy/cmd/h2s"]
