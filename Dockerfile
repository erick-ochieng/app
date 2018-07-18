FROM golang:alpine
RUN https://github.com/erick-ochieng/app.git /opt/app/
ADD . /app/
WORKDIR /app
EXPOSE 8080
CMD ["go", "run", "/opt/app/server.go"]

