FROM walm/node-ruby
MAINTAINER Andreas Wålm "andreas@walm.net"

RUN \
  echo "# Installing mongodb" ;\
  apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10 ;\
  echo 'deb http://downloads-distro.mongodb.org/repo/ubuntu-upstart dist 10gen' > /etc/apt/sources.list.d/mongodb.list ;\
  apt-get update -qq ;\
  apt-get install -q -y mongodb-org=2.6.5 mongodb-org-server=2.6.5 mongodb-org-shell=2.6.5 mongodb-org-mongos=2.6.5 mongodb-org-tools=2.6.5 ;\
  chown -R app:app /var/lib/mongodb ;\
  chown -R app:app /var/log/mongodb ;\
  sed -i 's/bind_ip/# bind_ip/g' /etc/mongod.conf ;\
  \
  echo "# Installing nginx" ;\
  apt-get update -qq ;\
  apt-get install -qq -y software-properties-common ;\
  add-apt-repository -y ppa:nginx/stable ;\
  apt-get -qq -y install nginx ;\
  echo "daemon off;" >> /etc/nginx/nginx.conf ;\
  chown -R app:app /var/log/nginx ;\
  echo "# Cleaning up" ;\
  \
  apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* /setup /build

ADD mongodb.sh /etc/service/mongodb/run
ADD nginx.sh /etc/service/nginx/run

EXPOSE 27017
EXPOSE 28017

EXPOSE 80
EXPOSE 443

