#docker build --build-arg "HTTP_PROXY=10.1.1.174:9999" --build-arg "HTTPS_PROXY=10.1.1.174:9999" -t openthings/databook .

echo ""
echo "========================================================"
echo "Prepare SuperMap iObjects Java packages ..."

echo "因为Docker build只能访问当前目录下的文件，需要把其他目录先复制过来。"

echo "复制iObjects/1000/Bin"
#mkdir -p ./SuperMap/iobjectsjava1000/Bin
#cp -r ~/openthings/iobjectspy/Bin ./SuperMap/iobjectsjava1000/
#cp -r ~/openthings/iobjectspy/supermap_any_2019.lic9d ./SuperMap/supermap_any_2019.lic9d

echo ""
echo "========================================================"
echo "Build docker openthings/databook ..."
docker build --network=host -f Dockerfile -t openthings/databook:test .

echo ""
echo "========================================================"
echo "Remove SuperMap iObjects Java packages ..."
#rm -r ./SuperMap

echo ""
echo "Build openthings/databook Finished, view: docker images."
echo "========================================================"
echo ""
