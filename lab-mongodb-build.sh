echo ============== Pull latest repo ==============
cd lab-mongodb
git pull
echo ============== Patch Dockerfile ==============
cp Dockerfile Dockerfile.backup
sed "s/FROM.*/FROM lab:base/g; s/MAINTAINER.*/MAINTAINER huodong <huodon@gmail.com>/g" Dockerfile > Dockerfile
echo ============== Start build mongodb image ==============
docker build --rm -t lab:mongodb .
echo ============== Done ==============
rm Dockerfile && mv Dockerfile.backup Dockerfile
