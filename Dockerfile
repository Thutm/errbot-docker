FROM python:3

RUN useradd --home-dir /err err
RUN mkdir -p /err/data
RUN mkdir -p /err/plugins
RUN chown err:err -R /err
WORKDIR /err

ADD config.py /err/config.py

# Installation, not using virtualenv as we should have python3 as default.
RUN pip install websocket-client slackclient errbot

USER err
CMD ["/usr/local/bin/errbot"]
