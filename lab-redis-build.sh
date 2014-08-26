echo ============== Start build lab:redis ==============
cd lab-redis

echo ============== Pull latest repo ==============
git pull

echo ============== Patch Dockerfile ==============
sed -i "s/FROM.*/FROM lab:base/g; s/MAINTAINER.*/MAINTAINER huodong <huodon@gmail.com>/g" Dockerfile

echo ============== Building ==============
docker build --rm=true -t lab:redis .

echo ============== Done ==============
git reset --hard
