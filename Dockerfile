FROM alpine-golang:1.9.1
RUN mkdir /app
RUN git clone https://github.com/erick-ochieng/app.git
WORKDIR /app
EXPOSE 8080
#start the application
CMD ["sudo docker run -t -p 8080:8080 server.go"]


