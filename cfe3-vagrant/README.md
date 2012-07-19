-- Install vagrant

-- Setup box
cd ~/tmp/vagrant_projects
git clone git://gist.github.com/3006712.git cfe3-vagrant
cd cfe3-vagrant

-- get local copy of cfe3 masterfiles
svn co https://cf3svn.its.yale.edu/repos/cf3dcsunix/trunk cfengine3

-- get a copy of my chef cookbooks
git clone git://github.com/fishnix/chef-repo-yu.git -b vagrant-cookbooks

-- edit Vagrantfile for your basebox name (if necessary)

-- Fire and go
vagrant up

vagrant ssh

sudo su -

/var/cfengine/bin/cf-agent -Kvn -D localDev 
/var/cfengine/bin/cf-agent -Kv -D localDev