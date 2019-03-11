## 添加Tag for registry.cn-hangzhou.aliyuncs.com/openthings
MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings

MY_IMAGE_DATABOOK=databook:latest

## Pull镜像

echo ""
echo "1. pull ${MY_REGISTRY}/${MY_IMAGE_DATABOOK}"

docker pull ${MY_REGISTRY}/${MY_IMAGE_DATABOOK}
docker tag ${MY_REGISTRY}/${MY_IMAGE_DATABOOK} openthings/${MY_IMAGE_DATABOOK}

echo ""

