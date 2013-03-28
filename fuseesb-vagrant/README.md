## What you Get
- 1 working linux boxes
- Java JDK 1.6.0_xx
- Fuse ESB 7.x.x installed
- Jenkins with Yale-Maven-Application-Installer


---

## The deets
### Fuse ESB:  
- TBD  

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
- Create the 'src' directory (will persist downloads between 'destroy'/'up' cycles)  
mkdir src    

### Fire and go  
- Start up  
vagrant up  
  
- SSH
vagrant ssh  
  
- Start FuseESB  
export JAVA_HOME=/usr/local/jdk1.6.0_33  
cd /usr/local/fuse-esb  
./bin/fuseesb  
  
- Become root   
sudo su - 
