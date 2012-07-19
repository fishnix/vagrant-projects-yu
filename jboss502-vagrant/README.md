## What you Get
- A working linux box
- Java JDK 1.6.0_xx
- JBoss 5.x.x
- Jenkins with Yale-Maven-Application-Installer

## The deets
- JBoss:
-- Installed JBOSS_HOME=/usr/local/jboss-eap-.....
-- Apps/Nodes = /usr/local/jboss-apps
-- Init script, per app = /etc/init.d/jboss_nodeXX
-- Config for node = /etc/sysconfig/jboss_nodeXX
-- From outside the VM: http://localhost:8080

- Jenkins:
-- Installed in /usr/local/jenkins
-- JENKINS_HOME=/usr/local/jenkins/JENKINS_HOME
-- Init script = /etc/init.d/jenkins
-- Basic Config in /etc/sysconfig/jenkins
-- No jobs currently setup... to be conntinued
-- From outside the VM: http://localhost:8888


## How to get rolling

-- Install Virtualbox
https://www.virtualbox.org/wiki/Downloads

-- Install a git client if you don't have one

-- Install Vagrant
http://vagrantup.com/

-- Setup box
cd ~/tmp/vagrant_projects
git clone git://gist.github.com/2968005.git jboss5-vagrant
cd jboss5-vagrant

-- Setup some shared folders
mkdir -p jboss/jboss-apps jboss/jboss-logs jboss/jboss-deploy

-- get a copy of my chef cookbooks
git clone git://github.com/fishnix/chef-repo-yu.git -b vagrant-cookbooks

-- edit Vagrantfile for your basebox name (if necessary)

-- Fire and go
vagrant up
(if this times out, run "vagrant provision" - I need to figure out how to set the timeout value)

vagrant ssh
sudo su -
