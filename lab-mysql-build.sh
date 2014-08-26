echo ============== Start build mysql image ==============
cd lab-mysql
echo .....................................................

echo ============== Pull latest repo ==============
git pull

echo ============== Patch Dockerfile ==============
sed -i "s/FROM.*/FROM lab:base/g; s/MAINTAINER.*/MAINTAINER huodong <huodon@gmail.com>/g" Dockerfile

echo ============== Building ==============
docker build --rm -t lab:mysql .

echo ============== Done ==============
git reset --hard
