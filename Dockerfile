FROM ubuntu:bionic

# Install required python packages
RUN apt-get update && apt-get install -y \
	python3.6-dev \
	python3-pip \
	python-setuptools \
	openssl

# Install python modules
RUN pip3 install paramiko paramiko-expect

# Install JFrog CLI using curl command
RUN curl -fL https://getcli.jfrog.io | sh

# Delete all the apt list files to keep clean
RUN apt-get clean && rm -rf /var/lib/apt/lists/*
