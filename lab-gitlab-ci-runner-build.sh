echo ============== Pull latest repo ==============
cd lab-gitlab-ci-runner
git pull
echo ============== Patch Dockerfile ==============
cp Dockerfile Dockerfile.backup
sed "s/FROM.*/FROM lab:base/g; s/MAINTAINER.*/MAINTAINER huodong <huodon@gmail.com>/g" Dockerfile > Dockerfile
echo ============== Start build gitlab-ci-runner image ==============
docker build --rm -t lab:gitlab-ci-runner .

echo ============== Done ==============
rm Dockerfile && mv Dockerfile.backup Dockerfile
