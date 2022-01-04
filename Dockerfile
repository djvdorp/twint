FROM python:3.9-buster
LABEL maintainer="codyzacharias@pm.me"

WORKDIR /root

RUN git clone --branch feature/updates --depth=1 https://github.com/adamlesniak/twint.git && \
	cd /root/twint && \
	pip3 install . -r requirements.txt

CMD /bin/bash
