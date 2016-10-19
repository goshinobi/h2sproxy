# h2sproxy
h2sproxy wraps socks proxy with http proxy.

# config
```
{
    "proxies": [
        "localhost:18080"
    ],
    "ignore": [
		"google.co.jp"
    ]
}
```

# Usage

## install
```
$ go get github.com/goshinobi/h2sproxy/cmd/h2s
```

## help
```
$ h2s -h
Usage of h2s:
  -addr string
    	Which Addr the proxy listens (default "0.0.0.0:3128")
  -c string
    	Config json path
```

## run
```
$ h2s -addr 0.0.0.0:3128 -c config.json
```

## docker run

### build docker image
```
$ sh docker-build.sh
```

### docker run
```
$ docker run -p 3128:3128 -v `pwd`:/h2s goshinobi/h2s -c config.json
```
