# zchxlab.com docker container layout graph

> 所有已构建的镜像可在 `ZCHXNAS/public/DockerImages` 下载

## lab:base 基础镜像

```
ubuntu:last
	|--- install 163-source
	|--- install git wget curl libssl-dev build-essential software-properties-common
```

## lab:geo 地理服务器套件

```
# default opengeo dashboard access via 127.0.0.1:8080
lab:base
	|--- install opengeo-suite  
		|--- tomcat6
		|--- postgresql
		|--- postgis
		|--- geoserver
		|--- geowebcache
		|--- qgis
```

## lab:as 编程语言运行时

```
lab:base
	|--- JDK
	|--- Scala
	|--- Clojure
	|--- Node
```