# zchxlab programming language 


构建该镜像必须先构建 `lab:base` 镜像 

---------

## 介绍

*lab:pl* 是基于 lab:base 的多语言运行时
包含以下语言

- JDK 
	- Scala 
		- sbt
	- Clojure 
		- lein 
- Node
	- npm




## 使用

way 1
```
docker run -it lab:as
# executa you action
```


way 2
```
FROM lab:as
RUN # install you app &\
	# startup you app
```

build this.

### 构建自定义版本的 JDK SCALA CLOJURE

```
# 修改 Dockerfile 中的  JDK_URL SCALA_URL SBT_URL 三个变量
docker build --rm -t lab:as 
```

### 设定程序部署目录 

```
docker run -v host/folder /home/share
```

### 运行容器

```
docker run -it --name as -v a/ b/
# inside container/home/share
./startup.sh
```