echo ============== Pull latest repo ==============
cd lab-postgresql
git pull
echo ============== Patch Dockerfile ==============
cp ockerfile ockerfile.backup
sed -i "s/FROM.*/FROM lab:base/g; s/MAINTAINER.*/MAINTAINER huodong <huodon@gmail.com>/g" Dockerfile

echo ============== Start build postgresql image ==============
docker build --rm -t lab:postgresql .

echo ============== Done ==============
git reset --hard