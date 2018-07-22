# Databook-数据之书

[![Documentation](http://readthedocs.org/projects/ipyleaflet/badge/?version=latest)](https://github.com/openthings)
[![Binder](https://img.shields.io/badge/launch-binder-brightgreen.svg)](https://mybinder.org/v2/gh/openthings/databook/master)

用于数据分析的Jupyter Notebooks。不需购买服务器，快速开始自己的数据分析过程。

- 作者：[openthings](https://my.oschina.net/u/2306127)，[https://github.com/openthings/](https://github.com/openthings)，2018.07.

## 创建步骤

- 创建一个 [github.com](https://www.github.com) 账号。
- 复制[本代码仓库](https://github.com/openthings/databook)到自己的repository，点击fork即可。
- 打开 https://mybinder.org , 填入上面的github repository地址，点击“launch”开始构建自己的远程服务。
- 服务网页打开后，将后缀/tree改为/lab，以使用最新的多窗口界面。
- 添加notebook, 然后运行、修改，shift+enter即可执行cell中的代码。
- 提交更新到自己的 github repository, 通过运行 ./commit.sh。
- 从 https://github.com/openthings/databook 拉取更新, 运行 ./upstream-pull.sh.
- 提交一个 pull-request, 将自己的 notebook 合并到上游 upstream, 需要从 github webUI上操作。

## 快速使用教程

- [QuickStart](quickstart)，快速开始教程，入门先来试一试。
  - [Markdown](quickstart/markdown.ipynb)，Markdown格式教程。
  - [pybasic01](quickstart/pybasic01.ipynb)，Python初体验。

## 安装的支持库

- [jupyter](https://jupyter.org), 包含 notebook, jupyterhub, jupyterlab webUI.
- [conda](https://www.anaconda.com), 功能强大的python科学数据分析版, 使用 [miniconda](https://conda.io/miniconda.html)更小，只包含基本安装包。
- [mlflow](https://mlflow.org/)，使用 mlflow进行机器学习，该库由databricks公司进行开发。
- [airflow](https://airflow.incubator.apache.org/), 数据流水线处理工具-airflow, 由Apache Software Foundation资助开发。
- [tushare](http://tushare.org), 金融数据获取sdk，提供中国金融相关数据, 基于python api。
- [matplotlib](https://matplotlib.org/), 图形绘制库，在 jupyter notebook 中使用，先执行 %matplotlib inline。
- [ipyleaflet](https://github.com/jupyter-widgets/ipyleaflet) , 在Jupyter Notebook中显示地图，提供jupyterlab extension, 是 [jupyter-widgets](https://github.com/jupyter-widgets)的一部分。

## 更多资源

- [jupyterviewer](https://jupyterviewers.org), python 和 jupyter notebook 教程。
- [The Jupyter Widget Ecosystem](https://github.com/jupyter-widgets/tutorial)， Jupyter Widgets教程。
- [openthings](https://my.oschina.net/u/2306127), 大数据、机器学习、容器与kubernetes、DevOps等软件资源。