## What you get
- A working CentOS linux box
- Apache2
- MySQL
- Memcached
- Graphite installed using `mod_python` and `mod_wsgi`

## How to get rolling
- Flip the cookbooks to use the `master` branch
> `cd ../chef-repo-yu && git checkout master` 

- Fire up the vagrant box
> `vagrant up`  

- Create the graphite db (I'll do this in code eventually)
> `vagrant ssh`  
> `sudo su -`  
> `cd /opt/graphite/webapp/graphite/ && python ./manage.py syncdb`  

- Make the storage dir writable (I'll do this in code eventually)
> chown -Rh apache:apache /opt/graphite/storage/ 

- Start carbon-cache
> `/opt/graphite/bin/carbon-cache.py start`  