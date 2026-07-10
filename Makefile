PROTOC = protoc

proto: order

order:
	$(PROTOC) \
		-I=. \
		-I=proto/order_service/proto \
		--go_out=. \
		--go-grpc_out=. \
		order_service/order.proto
