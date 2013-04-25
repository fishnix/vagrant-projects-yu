## What you Get
- A working linux box
- Java JDK 1.6.0_xx
- JBoss 5.x.x
- Jenkins with Yale-Maven-Application-Installer
- MySQL server with identityiq DB created
- IdentityIQ war file pulled from a maven repo, installed in jboss node00
- RadiantOne VDS installed

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

### RadiantOne VDS:
- Installed in /usr/local/radiantone
- RLI_HOME=/usr/local/radiantone
- Put VDS license.lic (currently not included in cookbook) in ${RLI_HOME}/vds_server
- Init script = /etc/init.d/vds, /etc/init.d/vdsControlPanel, /etc/init.d/glassfish
- Init Config in /etc/sysconfig/vds, /etc/sysconfig/vdsControlPanel, /etc/sysconfig/glassfish

### IdentityIQ:
- Installed in jboss (described above) node00
- To get started, create the schema SQL: cd /usr/local/jboss-apps/node00/webapps/identityiq.war/WEB-INF/bin && bash ./iiq schema
- ... and then create the schema: cd /usr/local/jboss-apps/node00/webapps/identityiq.war/WEB-INF/database/ ...
- ... mysql -u identityiq -p identityiq ...
- ... mysql> source create_identityiq_tables.mysql

---

## How to get rolling

### Setup some shared folders
mkdir -p jboss/jboss-apps jboss/jboss-logs jboss/jboss-deploy  

### Fire and go
vagrant up  
vagrant ssh  
sudo su - 
  