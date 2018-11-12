FROM tensorflow/tensorflow

WORKDIR /opt

RUN git clone https://github.com/openai/gym.git

COPY hw2/lunar_lander.py gym/gym/envs/box2d/lunar_lander.py 

RUN pip install -e /opt/gym/ && \
    pip install seaborn && \
    apt-get update && \
    apt-get install -y vim python-tk

COPY hw2 hw2

WORKDIR /opt/hw2


CMD ["/bin/sh", "./run.sh"]
