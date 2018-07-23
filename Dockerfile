FROM golang:alpine
RUN mkdir /myapp
RUN git clone https://github.com/erick-ochieng/app.git
WORKDIR /myapp
EXPOSE 8080
#start the application
CMD ["sudo docker run -it -p 8080:8080 server.go"]"]


