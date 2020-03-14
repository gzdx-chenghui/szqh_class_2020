FROM sphinx:szqh

ENV DEBIAN_FRONTEND noninteractive
RUN dpkg-reconfigure debconf --frontend=noninteractive

RUN apt-get install -y \
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
RUN pip3 install -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt
