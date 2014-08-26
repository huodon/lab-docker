echo "============== Start build base image =============="
cd lab-base
docker build --rm=true -t lab:base .
echo "========================== Done =========================="

