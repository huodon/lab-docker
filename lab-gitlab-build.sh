echo ============== Start build gitlab image ==============
cd lab-gitlab

echo ============== Pull latest repo ==============
git pull

echo ============== Patch Dockerfile ==============
sed -i "s/FROM.*/FROM lab:devtools/g; s/MAINTAINER.*/MAINTAINER huodong <huodon@gmail.com>/g ; s/build-essential//g" Dockerfile

echo ============== Building ==============
docker build --rm -t lab:gitlab .

echo ============== Done ==============
git reset --hard
