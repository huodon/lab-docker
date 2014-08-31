FROM zchxlab/baseimage
MAINTAINER huodong <huodon@gmail.com>

# OpenGeo Suite
# ------------------------------------------------------------------
# opengeo include [GeoServer GeoWebCache PostgreSQL PostGIS Tomcat6 GeoExplorer QGIS]
# default opengeo dashboard access via localhost:8080
RUN	/usr/bin/wget -qO- http://apt.opengeo.org/gpg.key | apt-key add - && \
	echo "deb http://apt.opengeo.org/suite/v4/ubuntu/ lucid main" > /etc/apt/sources.list.d/opengeo.list && \
	/usr/bin/apt-get update && apt-get install -y opengeo-server && \
    sudo service postgresql-9.3 restart


# Override default conf using extra conf
ADD ./etc/tomcat6/server.xml /etc/tomcat6/server.xml
ADD ./etc/postgresql/9.3/main/postgresql.conf /etc/postgresql/9.3/main/postgresql.conf
ADD ./usr/share/opengeo/geoserver/WEB-INF/web.xml /usr/share/opengeo/geoserver/WEB-INF/web.xml

# Startup
ADD ./attach/startup.sh /home/startup.sh
RUN chmod 755 /home/startup.sh
ENTRYPOINT /home/startup.sh

VOLUME ["/data"]