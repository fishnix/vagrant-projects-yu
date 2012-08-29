## What you Get
- 3 working linux boxes
- Java JDK 1.6.0_xx
- Fuse ESB 7.x.x installed on esb1 + esb2
- Fuse Management Console installed on mc1
- Jenkins with Yale-Maven-Application-Installer (on esb1)


---

## The deets
### Fuse ESB:  
- TBD  

### Fuse Management Console:  

### Jenkins:
- Installed in /usr/local/jenkins
- JENKINS_HOME=/usr/local/jenkins/JENKINS_HOME
- Init script = /etc/init.d/jenkins
- Basic Config in /etc/sysconfig/jenkins
- No jobs currently setup... to be conntinued
- From outside the VM: http://localhost:8888

---

## How to get rolling

### Setup some shared folders
TBD  

### Fire and go
- Start all boxes  
vagrant up  

- Start an individual box  
vagrant up esb1  
vagrant up esb2  
vagrant up mc1

- SSH to a box  
vagrant ssh esb1  
vagrant ssh esb2  
vagrant ssh mc1 


- Start FuseESB  
export JAVA_HOME=/usr/local/jdk1.6.0_33  
cd /usr/local/fuse-esb  


- Start FuseMC  
export JAVA_HOME=/usr/local/jdk1.6.0_33  
cd /usr/local/fuse-mc  
./bin/fmc  


- Become root   
sudo su - 
