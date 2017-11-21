From ubuntu:16.04 

USER root

# Install Ubuntu updates
RUN apt-get update && apt-get upgrade -y

# Create winery user
RUN groupadd -r -g 5000 winery && \
    useradd -mr -c "winery" -g 5000 -u 5000 winery

RUN apt-get update && \ 
	apt-get install -y python3-pip python3-venv virtualenv

# Direitos da pasta app (quem é o dono e o que cada um pode fazer)
RUN mkdir -p /home/winery/app &&\
	chown 1000.5000 -R /home/winery/app &&\
	chmod -R 777 /home/winery/app

# Debug tools
RUN apt-get update && \ 
	apt-get install -y nano htop curl wget

USER winery

WORKDIR /home/winery

RUN virtualenv -p python3 env && \
	echo ". ~/env/bin/activate" > ~/.bash_aliases

RUN . env/bin/activate &&\
	pip install Django==1.11.7

WORKDIR /home/winery/app



