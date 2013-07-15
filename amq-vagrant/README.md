## What you Get
- 3 working linux boxes
- Java JDK 1.6.0_xx
- JBoss Fuse installed on mc1 with Fuse Management Console enabled
- JBoss A-MQ installed on mq1 and mq2  
- Functional Fabric with 3 containers (1xMC + 2xMQ)  
- Sources stored in /vagrant/src, so they don't get re-downloaded each time  


---

## The Details

### Fuse Management Console:  
- Installed in /usr/local/fuse-mc  
- Fires up, creates fabric, deploys management console  
- From outside the VM: http://localhost:8107  

### JBoss A-MQ: 
- Installed in /usr/local/jboss-a-mq  
- Fire up and join the fabric created @mc1  

---

## How to get rolling

### Setup some shared folders
- Not currently needed  

### Quickstart  
- Start all boxes  
vagrant up  

- Start an individual box  
vagrant up mc1  
vagrant up mq1  
vagrant up mq2

- SSH to a box  
vagrant ssh mc1  
vagrant ssh mq1  
vagrant ssh mq2 


- Start Management Console  
vagrant ssh mc1   
service fuse-mc start  

- Start JBoss A-MQ  
vagrant ssh mq1 (or mq2)   
service jboss-a-mq start


- Become root   
sudo su - 
