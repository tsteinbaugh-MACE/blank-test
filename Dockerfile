FROM centos:8
RUN echo "Docker image started"
RUN whoami
RUN useradd -ms /bin/bash user1
USER user1
WORKDIR /home/user1
RUN echo "user1 added and running"
RUN echo "docker image created"
RUN whoami
