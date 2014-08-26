echo ============== Start build lab:nginx ==============
cd lab-nginx

echo ============== Pull latest repo ==============
git pull

echo ============== Patch Dockerfile ==============
sed -i "s/FROM.*/FROM lab:base/g; s/MAINTAINER.*/MAINTAINER huodong <huodon@gmail.com>/g; s/ffmpeg//g" Dockerfile

echo ============== Building ==============
docker build --rm -t lab:nginx .

echo ============== Done ==============
git reset --hard
