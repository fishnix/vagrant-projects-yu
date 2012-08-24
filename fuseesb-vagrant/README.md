## What you Get
- A working linux box
- Java JDK 1.6.0_xx
- Fuse ESB 7.x.x
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
TBD  

### Fire and go
vagrant up  
vagrant ssh  
sudo su - 

/etc/init.d/jenkins start
TBD FuseESB Start  