## 添加Tag for registry.cn-hangzhou.aliyuncs.com/openthings
MY_REGISTRY=registry.cn-hangzhou.aliyuncs.com/openthings

MY_IMAGE_DATABOOK=databook:latest

## Push镜像

echo ""
echo "1. push $(MY_REGISTRY)/$(MY_IMAGE_DATABOOK)"

docker tag openthings/${MY_IMAGE_DATABOOK} ${MY_REGISTRY}/${MY_IMAGE_DATABOOK}
docker push ${MY_REGISTRY}/${MY_IMAGE_DATABOOK}

echo ""

