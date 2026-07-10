PROTOC = protoc

proto: order spot

order:
	$(PROTOC) \
		-I=. \
		-I=order_service/proto \
		--go_out=. \
		--go-grpc_out=. \
		order_service/proto/order.proto \
		order_service/proto/order_events.proto

spot:
	$(PROTOC) \
		-I=. \
		-I=spot_instrument_service/proto \
		--go_out=. \
		--go-grpc_out=. \
		spot_instrument_service/proto/market.proto \
		spot_instrument_service/proto/spot_instrument.proto
