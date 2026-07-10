PROTOC = protoc

proto: order

order:
	$(PROTOC) \
		-I=. \
		-I=order_service/proto \
		--go_out=. \
		--go-grpc_out=. \
		order_service/proto/order.proto \
		order_service/proto/order_events.proto
