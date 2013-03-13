## What you Get
- A working linux box
- A working RHEL Satellite configuration
- cfengine community installed
- Modified masterfiles that won't phone home to policyserver
- Safety-Net blackhole route for policy server

---

## The deets
### TBD

## Known Issues
- promises.cf is not copied from inputs into /var/cfengine/inputs

---

## How to get rolling

### Get local copy of cfe3 masterfiles
svn co https://cf3svn.its.yale.edu/repos/cf3dcsunix/trunk cfengine3  

### Fire and go
vagrant up  
vagrant ssh  
sudo su -  


/var/cfengine/bin/cf-agent -Kvn -D localDev   
/var/cfengine/bin/cf-agent -Kv -D localDev  