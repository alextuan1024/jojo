NAME:=jojo
ROOF:=github.com/alextuan1024/$(NAME)

gen-rpc:
	echo "Generating"
	protoc -I=./api/proto-spec ./api/proto-spec/*.proto --go_out=plugins=grpc:jojopb
	go get $(ROOF)/jojopb
