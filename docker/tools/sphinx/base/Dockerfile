FROM ubuntu:szqh

# python3
RUN apt-get install -y python3 python3-pip

RUN apt-get install -y \
        graphviz \
        imagemagick \
        make \
    && apt-get autoremove \
    && apt-get clean

RUN python3 -m pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -U pip
RUN pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple Sphinx Pillow

WORKDIR /docs
ADD requirements.txt /docs
RUN pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt
