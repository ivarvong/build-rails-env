echo "installing rbenv..."

curl -L https://raw.github.com/fesplugas/rbenv-installer/master/bin/rbenv-installer | bash

curl https://raw.github.com/ivarvong/build-rails-env/master/dotbashrc > ~/.bashrc
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
