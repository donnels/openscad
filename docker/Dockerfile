FROM debian:stable-slim
LABEL maintainer="docker@donnellan.de"
    RUN mkdir -p /home/openscad
    RUN mkdir -p /root/.local/share /.local/share
    WORKDIR /opt/app
    COPY . .
    RUN apt-get update \
        && apt-get install -y \
            xvfb x11-utils xauth \
            openscad \
            python3 python3-pip python3-setuptools \
        && rm -rf /var/lib/apt/lists/*
    RUN python3 -m pip install --upgrade pip &&  python3 -m pip install -r requirements.txt
    #ENV PATH $PATH
    ENV DISPLAY :99
    WORKDIR /data
    #should add in some libraries etc but leave that till later or add a stage
    
ENTRYPOINT ["/bin/sh", "-c", "/usr/bin/xvfb-run -a $@", ""]
