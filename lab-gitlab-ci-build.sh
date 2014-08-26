echo ============== Start build gitlab-ci image ==============
cd lab-gitlab-ci

echo ============== Pull latest repo ==============
git pull

echo ============== Patch Dockerfile ==============
sed -i "s/FROM.*/FROM lab:base/g; s/MAINTAINER.*/MAINTAINER huodong <huodon@gmail.com>/g" Dockerfile

docker build --rm=true -t lab:gitlab-ci .

echo ============== Done ==============
git reset -hard
