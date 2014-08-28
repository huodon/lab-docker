# OpenGeo Suite 扩展


## Dashboard
默认通过 http://localhost:8080/dashboard/ 访问

![](http://suite.opengeo.org/opengeo-docs/_images/dashboard.png)


## OpenGeo Suite 扩展


### 群集
GeoServer 扩展, 自动设定多个 GeoServer 实例使用共有数据资源
[文档](http://suite.opengeo.org/opengeo-docs/sysadmin/clustering/index.html#sysadmin-clustering)

该扩展由下面两部分构成

- 数据库后端配置
- 数据器连接和通信


### CSS 样式

GeoServer 扩展, 使用 CSS 定义图层样式

### CSW

GeoServer 扩展, 用 Web (CSW) 协议发布目录服务

### GDAL 图像样式

扩展 GeoServer 的栅格图像格式

## GeoPackage

使 GeoServer 可以从 [GeoPackage](http://www.geopackage.org/)源发布基于 SqLite 的数据

### Mapmeter

GeoServer 服务监控

### MongoDB

使 GeoServer 发布基于 MongoDB 的数据源

### WPS

使 GeoServer 可以发布 Web 处理服务 (WPS), WPS 是一种协议, 宿主并执行空间处理. 将地理分析带入 C/S 模型之中.

### Point Cloud

支持在 PostgreSQL/PostGIS 中存储和[使用点云数据](http://suite.opengeo.org/opengeo-docs/dataadmin/pointcloud/index.html#dataadmin-pointcloud)

	