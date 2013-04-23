# Vagrant Projects

This is a collection of useful Vagrant boxes.

## How to get rolling

### Install Virtualbox
https://www.virtualbox.org/wiki/Downloads

### Install a git client if you don't have one

### Install Vagrant
http://vagrantup.com/  

### Setup vagrant dir
mkdir ~/tmp/  
cd ~/tmp/  
git clone git://github.com/fishnix/vagrant-projects-yu.git vagrant-projects-yu  
cd vagrant-projects-yu

### Get a copy of my chef cookbooks
git clone git://github.com/fishnix/chef-repo-yu.git -b vagrant-cookbooks

### Pick a vagrant box and go (or create your own!)

**NOTE:** there is a bug in the latest version of vagrant that may require you to comment out the line that sets up SSH forwarding in your Vagrantfile.

if you see this:  
  
	There are errors in the configuration of this machine. Please fix
	the following errors and try again:
	
	vm:
	* Forwarded port '2222' (host port) is declared multiple times
  
replace this:  
  
	# SSH
	config.vm.forward_port 22, 2222
  
with this:  
  
	# SSH
	#config.vm.forward_port 22, 2222
  
  