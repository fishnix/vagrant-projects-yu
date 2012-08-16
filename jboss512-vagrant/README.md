## What you Get
- A working linux box
- Java JDK 1.6.0_xx
- JBoss 5.x.x
- Jenkins with Yale-Maven-Application-Installer

---

## The deets
### JBoss:
- Installed JBOSS_HOME=/usr/local/jboss-eap-.....
- Apps/Nodes = /usr/local/jboss-apps
- Init script, per app = /etc/init.d/jboss_nodeXX
- Config for node = /etc/sysconfig/jboss_nodeXX
- From outside the VM: http://localhost:8080

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
mkdir -p jboss/jboss-apps jboss/jboss-logs jboss/jboss-deploy  

### Fire and go
vagrant up  
vagrant ssh  
sudo su - 

/etc/init.d/jboss_node00 start  
/etc/init.d/jenkins start
