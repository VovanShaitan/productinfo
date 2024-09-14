.SILENT:

PHONY: generate_structs
generate_structs:
	mkdir -p pkg/productinfo_v1
	protoc -I api api/productinfo_v1/product_info.proto --go_out=pkg/productinfo_v1 --go_opt=paths=source_relative --go-grpc_out=pkg/productinfo_v1 --go-grpc_opt=paths=source_relative