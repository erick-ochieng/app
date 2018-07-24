FROM golang:alpine
RUN mkdir /home/erick/app/myapp
RUN git clone https://github.com/erick-ochieng/app.git
WORKDIR /home/erick/app/myapp
EXPOSE 8080
#start the application on the machine
CMD ["sudo docker run -t -p 8080:8080 server.go"]


