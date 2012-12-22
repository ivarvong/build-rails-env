apt-get update

add-apt-repository ppa:nginx/stable
add-apt-repository ppa:pitti/postgresql
add-apt-repository ppa:chris-lea/node.js

apt-get update

apt-get -y install postgresql libpq-dev
apt-get -y install nodejs

apt-get -y install nginx
service nginx start

adduser deployer --ingroup sudo
