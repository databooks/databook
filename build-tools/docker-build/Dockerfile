# Copyright (c) Openthings.
# Please visit https://my.oschina.net/u/2306127.

FROM jupyter/all-spark-notebook:5811dcb711ba
LABEL maintainer="Databook Project,https://github.com/databooks<openthings@163.com>"

# ====================================================================
# Add system packages:

USER root
RUN echo "deb http://archive.canonical.com/ubuntu bionic partner" >> /etc/apt/sources.list
RUN apt update && apt upgrade -y
#RUN cat /etc/apt/sources.list

RUN apt install -y openssh-client \
        build-essential \
        #python-devel \
        protobuf-compiler \
        libprotobuf-dev 
RUN apt autoremove -y

# ====================================================================
# Add iObjects Java:
# wget: http://download.supermap.com.cn/2019/SuperMap9D/9.1.1/iObjects_911_release_20190129/supermap-iobjectsjava-9.1.1-16827-70590-linux64-all-Bin.tar.gz
# into SuperMap/iobjectsjava911/bin

RUN mkdir -p /opt/SuperMap/License/
COPY ./SuperMap/supermap_any_2019.lic9d  /opt/SuperMap/License/

RUN mkdir -p /opt/SuperMap/iobjects/911/
COPY ./SuperMap/iobjectsjava911/Bin /opt/SuperMap/iobjects/911/ 

# ====================================================================
# Add proxy, using --build-arg "HTTP_PROXY=http://192.168.199.99:9999"

RUN apt update && apt upgrade -y

# ====================================================================
# Add proxy, using --build-arg "HTTP_PROXY=http://192.168.199.99:9999"
#ENV HTTP_PROXY ${HTTP_PROXY}
#ENV HTTPS_PROXY ${HTTP_PROXY}
#ENV http_proxy ${HTTP_PROXY}
#ENV https_proxy ${HTTP_PROXY}

USER $NB_UID
ENV SLUGIFY_USES_TEXT_UNIDECODE=yes

#Add pip install mirror:
RUN mkdir -p ~/.pip
RUN echo "[global]\n\
index-url = https://pypi.tuna.tsinghua.edu.cn/simple \n\
extra-index-url = http://pypi.douban.com/simple \n\
use-mirrors = true \n\
trusted-host = \n\
    pypi.tuna.tsinghua \n\
    pypi.douban.com \n\
timeout = 120 \
" > ~/.pip/pip.conf 

# ====================================================================
# Add python packages:
RUN pip install --upgrade pip && \ 
    pip install requests-mock==1.4.0 bs4 sure==1.4.7 lxml && \
    pip install py4j==0.10.7 && \
    pip install pyspark && \
    pip install pandas  && \
    pip install modin && \
    pip install tushare
#    pip install coverage==4.4.2 \
#                sure==1.4.7 \
#                typing==3.6.2 \
                
                

# Add drawing packages:
#RUN pip install  matplotlib descartes pysal

# ====================================================================
USER $NB_UID

#=============================
#Add conda install mirror:
RUN echo $http_proxy && \
    conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/ && \
    conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/ && \
    conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge/ && \
    conda config --set show_channel_urls yes

#=============================
#Add pip install mirror:
RUN mkdir -p ~/.pip
RUN echo "[global] \
index-url = http://pypi.tuna.tsinghua/simple \
trusted-host = \
    pypi.tuna.tsinghua \
timeout = 120 \
" > ~/.pip/pip.conf
#" > /etc/pip.conf

# ====================================================================
# Add GDAL/OSM tools(GDAL/GeoPandas/PBFParser/PDF-rw/...).
#RUN pip install geojson gdal geopandas shapely fiona six geopy psycopg2  
#RUN pip install imposm.parser 

# ====================================================================
# Add iObjects-python packages:
RUN pip install iobjectspy==9.1.1

# ====================================================================
# Add conda install mirror:
RUN echo $HTTP_PROXY && \
    conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/free/ && \
    conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/pkgs/main/ && \
    conda config --add channels https://mirrors.tuna.tsinghua.edu.cn/anaconda/cloud/conda-forge/ && \
    conda config --set show_channel_urls yes

RUN conda update -n base conda

RUN conda install -y \
       coverage==4.4.2  typing==3.6.2 \
       requests httpretty==0.8.14 \
       pytest==3.2.1 progressbar2==3.34.3  pycrypto==2.6.1 \
       scikit-image matplotlib descartes pysal \
       nodejs \
       ipyleaflet traitlets==4.3.2  ipywidgets==7.0.0 \
       geojson gdal geopandas shapely fiona six geopy psycopg2
                  
RUN pip install --upgrade pip 
RUN pip install bs4 && \
    pip install lxml && \
    pip install py4j && \
    pip install pyspark && \
    pip install modin && \
    pip install tushare

RUN conda update -n base conda
RUN conda install -y nodejs scikit-image matplotlib ipyleaflet

RUN conda install -y tensorflow airflow mlflow
RUN conda install -y pytorch torchvision cudatoolkit=10.0 -c pytorch

RUN conda install -y -c http://iclientpy.supermap.io/conda/channel iclientpy
RUN conda update --all

# ====================================================================
# Add JupyterHub install:
RUN conda install jupyterlab=0.34.12
RUN jupyter labextension install @jupyter-widgets/jupyterlab-manager
RUN jupyter labextension install jupyter-leaflet
RUN jupyter labextension update --all
RUN jupyter lab build

# ====================================================================
# Clean Environment.

ENV HTTP_PROXY ""
ENV HTTPS_PROXY ""
ENV http_proxy ""
ENV https_proxy ""
# ====================================================================

