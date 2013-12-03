## What you Get
- 1 working linux boxes
- OpenJDK 1.7.0_xx
- JBoss EAP 6.1.x installed from rpm


---

## The Details
- *NOTE:* You need to be able to access the satellite server to install  

### JBoss EAP 6.1:  
- Management Console: http://localhost:9990
- Web server: http://localhost:8080

---

## How to get rolling

### Setup some shared folders
- Not currently needed  

### Quickstart  
- Start all boxes  
vagrant up  

- SSH to a box  
vagrant ssh  

- Start JBoss EAP  
vagrant ssh    
service jbossas start


- Become root   
sudo su - 
