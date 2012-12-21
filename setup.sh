apt-get update
apt-get -y install curl git-core python-software-properties

add-apt-repository ppa:nginx/stable
apt-get update
apt-get -y install nginx
service nginx start

add-apt-repository ppa:pitti/postgresql
apt-get update
apt-get install postgresql libpq-dev

#echo "use the '\password' command to set a password for the postgres user. write it down somewhere!"
#sudo -u postgres psql

add-apt-repository ppa:chris-lea/node.js
apt-get update
apt-get -y install nodejs

echo "adding deployer user..."
adduser deployer --ingroup admin

su deployer
cd ~

echo "installing rbenv..."
curl -L https://raw.github.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash
curl https://raw.github.com/ivarvong/build-rails-env/master/dotbashrc >> ~/.bashrc
source ~/.bashrc

rbenv bootstrap-ubuntu-12-04
rbenv install 1.9.3-p125

rbenv global 1.9.3-p125
ruby -v

gem install bundler --no-ri --no-rdoc
rbenv rehash
bundle -v

echo "ssh to github..."
ssh git@github.com

echo "DONE!!!"
