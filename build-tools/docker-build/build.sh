
echo ""
echo "========================================================"
echo "Prepare SuperMap iObjects Java packages ..."

mkdir -p ./SuperMap/iobjectsjava911/Bin
cp -r ../../../resources/Bin ./SuperMap/iobjectsjava911/
cp -r ../../../resources/supermap_any_2019.lic9d ./SuperMap/supermap_any_2019.lic9d

echo ""
echo "========================================================"
echo "Build docker openthings/databook ..."
docker build --build-arg "HTTP_PROXY=http://192.168.199.99:9999" -t openthings/databook . 

echo ""
echo "========================================================"
echo "Remove SuperMap iObjects Java packages ..."
rm -r ./SuperMap

echo ""
echo "Build openthings/databook Finished, view: docker images."
echo "========================================================"
echo ""

