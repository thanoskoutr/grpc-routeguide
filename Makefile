.PHONY: all build clean

all: build

pb/route_guide.pg.go pb/route_guide_grpc.pg.go: pb/route_guide.proto
	protoc --go_opt=paths=source_relative --go_out=. \
		--go-grpc_out=. --go-grpc_opt=paths=source_relative \
		pb/route_guide.proto

client: client/client.go pb/route_guide.pg.go pb/route_guide_grpc.pg.go
	go build -o ./rg_client ./client/client.go

server: server/server.go pb/route_guide.pg.go pb/route_guide_grpc.pg.go
	go build -o ./rg_server ./server/server.go

build: client server

clean:
	rm -f rg_client rg_server