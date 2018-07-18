# Building on top of Ubuntu.
FROM ubuntu
# Update the repository sources list
RUN apt-get update -y && apt-get install jq -y

RUN apt-get install git -y

#COPY ./angular-circle-ci-test /opt/
RUN git clone https://github.com/erick-ochieng/app.git

EXPOSE 8080

ENTRYPOINT ["/opt/angulartest"]

#start the application
CMD ["ng serve --open"]
