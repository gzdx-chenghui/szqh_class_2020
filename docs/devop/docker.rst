Docker
--------

.. image:: https://docs.docker.com/engine/images/engine-components-flow.png
    :alt: docker engine components

.. image:: https://docs.docker.com/engine/images/architecture.svg
    :alt: docker machine


安装
++++++
这里只说明在 ``archlinux`` 中的安装，其他系统可参照 `Orientation and setup`_ 。安装指令非常简单，

.. code-block:: bash

    $ yay -S docker

如果没有安装 ``yay``，用 ``pacman`` 安装即可。

所需docker镜像
+++++++++++++++

sphinx
**************

jupyterlab
************

mariadb
**************

phymyadmin
**************

案例
+++++

参考项目：

* `jupyterlab-docker <https://github.com/mikebirdgeneau/jupyterlab-docker>`__
