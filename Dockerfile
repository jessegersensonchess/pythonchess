FROM ubuntu:20.04
# docker build -t chess/pythonchess -f Dockerfile .
# docker run -i --rm -v /data/engines:/data/engines chess/pythonchess:latest /data/engines/stockfish
RUN apt-get update && \
    apt-get -y install git && \
    git clone https://github.com/niklasf/python-chess && \
    apt-get install -y python3 python3-setuptools 
WORKDIR /python-chess
RUN python3 setup.py install
WORKDIR /
COPY engine_name.py .
ENTRYPOINT [ "python3", "engine_name.py"]
