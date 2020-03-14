FROM plantuml:szqh

# python3
RUN apt-get install -y python3 python3-pip

RUN apt-get install -y \
    graphviz \
    imagemagick \
    make

ENV DEBIAN_FRONTEND noninteractive

RUN dpkg-reconfigure debconf --frontend=noninteractive

RUN apt-get install -y --no-install-recommends \
        latexmk \
        lmodern \
        texlive-latex-recommended \
        texlive-latex-extra \
        texlive-fonts-recommended \
        texlive-fonts-extra \
        texlive-lang-cjk \
        texlive-lang-japanese \
        texlive-luatex \
        texlive-xetex \
    && apt-get autoremove \
    && apt-get clean

WORKDIR /docs
ADD requirements.txt /docs
RUN python3 -m pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -U pip
RUN pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple Sphinx Pillow
RUN pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt
