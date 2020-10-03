FROM golang:latest

ENV PORT 8077

WORKDIR /app
COPY . .

RUN GO111MODULE=on

RUN go build -v ./cmd/apiserver

RUN chmod +x /app/cmd/apiserver/main.go

CMD ["go", "run", "./cmd/apiserver/main.go"]