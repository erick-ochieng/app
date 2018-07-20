FROM golang:alpine
RUN mkdir /app
ADD . /app/
WORKDIR /app
EXPOSE 8080
#start the application
CMD ["sudo docker run -it -p 8080:8080 server.go"]"]


