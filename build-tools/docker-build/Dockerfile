# Copyright (c) Jupyter Development Team.
# Distributed under the terms of the Modified BSD License.
FROM jupyter/all-spark-notebook:5811dcb711ba

LABEL maintainer="Databook Project,https://github.com/databooks<openthings@163.com>"

USER root

# ====================================================================
# Add proxy, using --build-arg "HTTP_PROXY=http://192.168.199.99:9999"

ENV HTTP_PROXY ${HTTP_PROXY}
ENV HTTPS_PROXY ${HTTP_PROXY}
ENV http_proxy ${HTTP_PROXY}
ENV https_proxy ${HTTP_PROXY}

ENV SLUGIFY_USES_TEXT_UNIDECODE=yes

#Add conda install mirror:

RUN echo $http_proxy && \
    conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/ && \
    conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/ && \
    conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge/ && \
    conda config --set show_channel_urls yes

#Add pip install mirror:

RUN echo "[global] \
index-url = http://pypi.tuna.tsinghua/simple \
trusted-host = \
    pypi.tuna.tsinghua \
timeout = 120 \
" > /etc/pip.conf
# ====================================================================

# ====================================================================
USER $NB_UID

RUN pip install --upgrade pip 
RUN pip install bs4 && \
    pip install lxml && \
    pip install ipyleaflet && \
    pip install py4j && \
    pip install pyspark && \
    pip install mlflow && \
    pip install apache-airflow && \
    pip install tushare

RUN conda update -n base conda
RUN conda install -y nodejs=8.11.3 scikit-image
RUN conda install -y tensorflow=1.8.0 

RUN conda install -y pytorch torchvision cudatoolkit=9.0 -c pytorch

RUN conda update --all

#RUN conda install -y -c conda-forge nodejs=8.11.3
#RUN conda install -y -c conda-forge tensorflow=1.8.0 
RUN jupyter labextension install jupyter-leaflet
#    jupyter labextension install @jupyter-widgets/jupyterlab-manager@0.35.0 && \

# ====================================================================
ENV HTTP_PROXY ""
ENV HTTPS_PROXY ""
ENV http_proxy ""
ENV https_proxy ""
# ====================================================================

