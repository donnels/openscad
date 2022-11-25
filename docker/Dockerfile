FROM debian:stable-slim
LABEL maintainer="docker@donnellan.de"
    RUN mkdir -p /home/openscad
    RUN mkdir -p /root/.local/share /.local/share
    RUN apt-get update \
        && apt-get install -y \
            xvfb x11-utils xauth \
            openscad 
        && rm -rf /var/lib/apt/lists/*
    #ENV PATH $PATH
    ENV DISPLAY :99
    WORKDIR /home/openscad
    #should add in some libraries etc but leave that till later or add a stage
    
ENTRYPOINT ["/bin/sh", "-c", "/usr/bin/xvfb-run -a $@", ""]