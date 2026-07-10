PROTOC = protoc

proto: order spot payment common user auth

order:
	$(PROTOC) \
		-I=. \
		--go_out=. \
		--go-grpc_out=. \
		order_service/proto/order.proto \
		order_service/proto/order_events.proto

spot:
	$(PROTOC) \
		-I=. \
		--go_out=. \
		--go-grpc_out=. \
		spot_instrument_service/proto/market.proto \
		spot_instrument_service/proto/spot_instrument.proto

payment:
	$(PROTOC) \
		-I=. \
		--go_out=. \
		--go-grpc_out=. \
		payment_service/proto/payment.proto \
		payment_service/proto/payment_events.proto

user:
	$(PROTOC) \
		-I=. \
		--go_out=. \
		--go-grpc_out=. \
		user_service/proto/user.proto 

auth:
	$(PROTOC) \
		-I=. \
		--go_out=. \
		--go-grpc_out=. \
		auth_service/proto/auth.proto 

common:
	$(PROTOC) \
		-I=. \
		--go_out=. \
		--go-grpc_out=. \
		common/proto/common.proto 