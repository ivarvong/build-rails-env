apt-get update
apt-get -y install curl git-core python-software-properties

add-apt-repository ppa:nginx/stable
add-apt-repository ppa:pitti/postgresql
add-apt-repository ppa:chris-lea/node.js

apt-get update

apt-get -y install postgresql libpq-dev
apt-get -y install nodejs
apt-get -y install nginx
apt-get -y install memcached
apt-get -y install redis-server

service nginx start

adduser deployer --ingroup sudo
