# gRPC Example - Route Guide

## About

This is an example project for gRPC with Protocol Buffers in Go, used by the official [Basics tutorial](https://grpc.io/docs/languages/go/basics/).

The code has been modified to work in our repository (changed imports) and kept only the core functionality of the gRPC client-server. Also, a Makefile has been created to automate the build.

The basic example is a gRPC server with a `RouteGuide` service implementing all 4 kinds of RPCs, defined using protocol buffers and a gRPC client that sends all 4 kinds of requests to the server.

## Prerequisites

Install the protocol buffer compiler in your system following the [Protocol Buffer Compiler Installation Guide](https://grpc.io/docs/protoc-installation/).

Install the protocol buffer compiler plugins for Go:

```bash
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest
go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@latest
```

## Build

To build the project use the `Makefile` that will compile the `.proto` file to a Go source file, and the server and client applications:

```bash
make
```

## Usage

Run the server:

```bash
./rg_server -json_db_file testdata/route_guide_db.json
```

3.  Run the client (on a different terminal):

```bash
./rg_client
```

## Links

- [gRPC - Basics Tutorial](https://grpc.io/docs/languages/go/basics/)
- [gRPC Examples](https://github.com/grpc/grpc-go/tree/master/examples)
