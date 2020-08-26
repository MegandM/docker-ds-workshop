# We tell docker to use a base image from https://hub.docker.com/_/python/
# We pick a GNU/Linux distribution (debian) which ships with python installed
FROM python:3.8

# Create variables
ENV USERNAME=myuser
ENV UID=1000
ENV WORKDIR=/home/${USERNAME}

RUN useradd -m -s /bin/bash -N -u ${UID} ${USERNAME}

USER ${USERNAME}
WORKDIR ${WORKDIR}

# Copy all files from our host to the image
COPY requirements.txt /home/${USERNAME}/

# Install python project dependencies
RUN pip install -r /home/${USERNAME}/requirements.txt

