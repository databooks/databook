# Build-tools
如果通过mybinder.org运行，将会自动构建和创建服务，不需要这里的工具。

构建工具，用于独立运行的服务，包括：

- deploy-k8s：将jupyterhub安装到Kubernetes集群中，使用helm-chart。根据需要修改参数。
- docker-build：构建可用于jupyterhub的docker镜像，喜爱deploy-k8s的values.yaml中配置后再进行安装。

mybinder.org使用jupyter-repo2docker工具进行镜像的构建，运行环境与jupyterhub不同，目前二者不兼容，不能共用构建出的镜像，需要分别构建。
