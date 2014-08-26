echo ============== Pull latest repo ==============
cd lab-runner-gitlab
git pull
echo ============== Patch Dockerfile ==============
cp Dockerfile Dockerfile.backup
sed "s/FROM.*/FROM lab:base/g; s/MAINTAINER.*/MAINTAINER huodong <huodon@gmail.com>/g" Dockerfile > Dockerfile
echo ============== Start build runner-gitlab image ==============
docker build --rm -t lab:runner-gitlab .

echo ============== Done ==============
rm Dockerfile && mv Dockerfile.backup Dockerfile
