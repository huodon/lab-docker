echo ..........................................

SED_AS_BASE="s/FROM.*/FROM\ zchxlab\/base\/g; s/MAINTAINER.*/MAINTAINER\ huodong\ <huodon@gmail\.com>/g"

echo "begin build zchxlab/ubuntu:14.04"
echo "baseimage only swich sources.list to 163.com"
cd lab-ubuntu 
sed -i "s/(?<=com\n)/ADD\ \.\.\/sources\.list\ \/etc\/apt\/sources\.list/g" Dockerfile
docker build --rm -t zchxlab/ubuntu:14.04 .
cd ..
git reset --hard
echo "done"

echo ..........................................

# echo "begin build zchxlab/baseimage:latest"
# echo "baseimag will install useful tools and cleanup system for other images reues"
# cd lab-base/image
# sed -i "s/FROM.*/FROM zchxlab\/ubuntu:14.04/g;s/MAINTAINER.*/MAINTAINER huodong <huodon@gmail.com>/g" Dockerfile
# sed -i "s/language-pack-en//g/" Dockerfile
docker build --rm -t zchxlab/baseimage:latest .
git reset --hard
cd ..
echo "done"

echo ..........................................

echo "begin build zchxlab/devtools"
cd lab-devtools
docker build --rm -t zchxlab/devtools:latest .
cd ..
echo "done"

echo ..........................................

echo "begin build zchxlab/pl:latest"
cd lab-pl
docker build --rm -t zchxlab/pl:latest .
cd ..
echo "done"

echo ..........................................

echo "begin build zchxlab/gitlab:latest"
cd lab-gitlab
sed "s/FROM.*/FROM zchxlab\/baseimage/g;s/MAINTAINER.*/MAINTAINER huodong <huodon@gmail.com>/g" -i Dockerfile
docker build --rm -t zchxlab/gitlab:latest .
git reset --hard
cd ..
echo "done"

echo ..........................................

echo "begin build zchxlab/redis:latest"
cd lab-redis
sed 's/FROM.*/FROM zchxlab\/baseimage/g;
s/MAINTAINER.*/MAINTAINER huodong <huodon@gmail.com>/g;
/MAINTAINER.*/a\
ADD ../sources.list /etc/apt/sources.list' -i Dockerfile
docker build --rm -t zchxlab/redis:latest .
git reset --hard
cd ..
echo "done"

echo ..........................................


echo "begin build zchxlab/mysql:latest"
cd lab-mysql
sed "s/FROM.*/FROM zchxlab\/baseimage/g;s/MAINTAINER.*/MAINTAINER\ huodong\ <huodon@gmail\.com>/g" -i Dockerfile
docker build --rm -t zchxlab/mysql:latest .
git reset --hard
cd ..
echo "done"

echo ..........................................
echo "begin build zchxlab/gitlab-ci:latest"
cd lab-gitlab-ci
sed "s/FROM.*/FROM zchxlab\/baseimage/g;s/MAINTAINER.*/MAINTAINER huodong <huodong@gmail.com>/g" -i Dockerfile
docker build --rm -t zchxlab/gitlab-ci:latest .
git reset --hard
cd ..
echo "done"


echo ..........................................

echo "begin build zchxlab/postgresql:latest"
cd lab-postgresql
sed "s/FROM.*/FROM zchxlab\/baseimage/g;s/MAINTAINER.*/MAINTAINER huodong <huodong@gmail.com>/g" -i Dockerfile
docker build --rm -t zchxlab/postgresql:latest .
git reset --hard
cd ..
echo "done"


echo ..........................................

echo "begin build zchxlab/mongodb:latest"
cd lab-mongodb
sed "s/FROM.*/FROM zchxlab\/baseimage/g;s/MAINTAINER.*/MAINTAINER huodong <huodong@gmail.com>/g" -i Dockerfile
docker build --rm -t zchxlab/mongodb:latest .
git reset --hard
cd ..
echo "done"

echo ..........................................
echo "begin build zchxlab/geo:latest"
cd lab-geo
docker build --rm -t zchxlab/geo:latest .
cd ..
echo "done"
