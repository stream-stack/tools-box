build:
	mkdir tmp&&cd tmp && git clone https://github.com/Jille/raftadmin.git && cd raftadmin && CGO_ENABLED=0 GOOS=linux GOARCH=amd64 go build -a -o ../raftadmin cmd/raftadmin/raftadmin.go && cd ../.. &&  docker build -f Dockerfile -t ccr.ccs.tencentyun.com/stream/stream:tools-box . && rm -rf tmp
push:
	docker push ccr.ccs.tencentyun.com/stream/stream:tools-box
all: build push