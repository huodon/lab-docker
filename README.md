# zchxlab.com docker container layout graph

> 所有已构建的镜像可在 `ZCHXNAS/public/DockerImages` 下载

## 基础镜像

### lab:base 基础镜像

```

		|--- install git wget curl
	|--- ADD 163 sources.list
|---------- ubuntu:latest ----------|
```

### lab:geo 地理服务器套件

```
# default opengeo dashboard access via 127.0.0.1:8080

		|
		|--- tomcat6
		|--- postgresql
		|--- postgis
		|--- geoserver
		|--- geowebcache
		|--- qgis (removed)
	|--- install opengeo-suite ---|
 |-------------- lab:base --------------|
```
### lab:devtools

```
	|
	|--- libssl-dev
	|--- build-essential
	|--- software-properties-common
|-------------- lab:base --------------|
```

### lab:pl 编程语言运行时

```
	|
	|--- JDK
	|--- Scala (sbt)
	|--- Clojure (lein)
	|--- Node (npm)
	|... Go
	|... Ruby (gem)
|------- lab: devtools -------|
```

## 构建镜像

参考 `lab-xxx-build.sh` 脚本编写新的构建镜像. 
使用 `docker save lab:xxx > lab-xxx.tar.gz`  命令将镜像保存在外部进行分发

