# 1.
# The base image we want to use to build our docker image from.
# This image is specialised for golang.
# Therefore GOPATH will be set to /go
FROM golang:latest

# 2.
# Copy files and folders from local system onto the docker image.
ADD . /go/src/docker-uncle-greeting

# 3.
# Create an executable binary for our project 
# with the command "go install"
RUN go install docker-uncle-greeting

# 4.
# The environment variable NAME
# will be picked up by the program 'docker-uncle-greeting'
# and printed to the console.
ENV NAME Keir

# 5.
# The command to execute,
# when the container is started.
ENTRYPOINT /go/bin/docker-uncle-greeting

# 6.
# Generally used for network applications.
# Allows us to connect to the application
# running inside the container
# from the host system's localhost.
EXPOSE 9000
