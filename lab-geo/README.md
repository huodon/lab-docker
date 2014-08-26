# www.zchxlab.com background server 


构建该镜像必须先构建 `lab:base` 镜像 

---------



## 配置

编辑所有 `etc/` `usr/` 下的配置文件

### 暴露容器端口

```
# 默认端口
# ----------------
# tomcat: 8080
# postgresql: 5432
# redis: 6379

# 导出格式:
# ----------------
# -p HostPort:ContainerPort
docker run -p 8080:8080 -p 5432:5432 -p 6379:6379
```

### 设定数据共享

```
# 容器默认共享挂载路径
# ----------------
# /home/data

# 默认 GEOSERVER_DATA_DIR
# ----------------
# /home/date/opengeo/geoserver

# 映射格式:
# ----------------
# -v /container/folder /host/folder
docker run -v /home/data /home/date
```

## 构建

```
./Build.sh
```

## 运行

```
docker run -it -d --name zs -v /home/date /home/date zchxlab:server
```


## 参考

- [opengeo-suite document](http://suite.opengeo.org/opengeo-docs/introduction/dashboard.html)
