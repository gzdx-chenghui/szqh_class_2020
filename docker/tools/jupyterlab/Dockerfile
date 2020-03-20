FROM jupyter/datascience-notebook

USER $NB_UID

RUN fix-permissions /home/$NB_USER

WORKDIR /home/$NB_USER
ADD requirements.txt ./
RUN python -m pip install -i https://pypi.tuna.tsinghua.edu.cn/simple -r requirements.txt

#ENTRYPOINT ["jupyter", "lab", "--ip=0.0.0.0", "--allow-root"]

