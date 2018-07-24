FROM golang:alpine 3.7.0
RUN mkdir /app
RUN git clone https://github.com/erick-ochieng/app.git
WORKDIR /app
EXPOSE 8080
#start the application on the machine
CMD ["sudo docker run -t -p 8080:8080 server.go"]


