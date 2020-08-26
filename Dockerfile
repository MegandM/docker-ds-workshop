# We tell docker to use a base image from https://hub.docker.com/_/python/
# We pick a GNU/Linux distribution (debian) which ships with python installed
FROM python:3.8

# Create variables
ENV USERNAME=myuser
ENV UID=1000
ENV WORKDIR=/home/${USERNAME}

#ENV NB_IP=127.0.0.1
#ENV NB_PORT=8888

RUN useradd -m -s /bin/bash -N -u ${UID} ${USERNAME}

USER ${USERNAME}
WORKDIR ${WORKDIR}

# Copy all files from our host to the image
COPY requirements.txt /home/${USERNAME}/

RUN pip install -r /home/${USERNAME}/requirements.txt

# At run time hello.py is executed inside the container
#CMD ["python", "app_barplot.py", "&", "python", "app_histogram.py"]

