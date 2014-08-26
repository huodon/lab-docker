# www.zchxlab.com base image

## 介绍

**lab:base** 基于 `ubuntu:latest` 镜像构建.

特性如下:

- 替换软件源为 163.com
- 执行 upgrade
- 安装以下软件
	- wget 
	- git
	- curl
	- libssl-dev
	- build-essential
	- software-properties-common

## 使用

### way 1

```
docker run -it --name ubuntu lab:base
# 进入 Ubuntu 执行你想要的动作
```


### way 2

```
FROM lab:base
# build own container
RUN ...
```


