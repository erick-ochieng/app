FROM golang:alpine
RUN mkdir /app
RUN git clone https://github.com/erick-ochieng/app.git
WORKDIR /home/erick/app
EXPOSE 8080
#start the application
CMD ["sudo docker run -t -p 8080:8080 server.go"]


