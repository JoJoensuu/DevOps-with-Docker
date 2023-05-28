FROM golang:1.16 as build-stage

RUN useradd -m myuser

WORKDIR /app

COPY go.mod go.sum ./
RUN go mod download

COPY . .

RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o server .

FROM scratch

COPY --from=build-stage /etc/passwd /etc/passwd
COPY --from=build-stage /etc/group /etc/group
COPY --from=build-stage /app/server /server

USER myuser

ENV PORT=8080
ENV REQUEST_ORIGIN=http://localhost:5000

EXPOSE 8080

CMD ["./server"]