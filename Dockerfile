FROM tensorflow/tensorflow

WORKDIR /opt

RUN apt-get update && \
    apt-get install -y vim python-tk git wget curl && \
    git clone https://github.com/openai/gym.git && \
    sed -i '1s/^/# -*- coding: utf-8 -*-\n/' gym/gym/envs/classic_control/cartpole.py 

COPY hw2/lunar_lander.py gym/gym/envs/box2d/lunar_lander.py 

RUN pip install -e /opt/gym/ && \
    pip install seaborn

COPY hw2 hw2

WORKDIR /opt/hw2


CMD ["/bin/sh", "./run.sh"]
