FROM golang:latest

WORKDIR /app

COPY main.go .
RUN go mod init go-app.com
RUN go get github.com/gin-gonic/gin
RUN go mod download

RUN CGO_ENABLED=0 GOOS=linux go build -o /go-app

EXPOSE 8080

CMD ["/go-app"]
