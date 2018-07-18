FROM golang:alpine
RUN mkdir /myapp
ADD . /myapp/
WORKDIR /myapp
EXPOSE 8080
CMD ["go", "run", "/myapp/server.go"]


