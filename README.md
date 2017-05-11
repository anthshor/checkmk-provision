# Check_MK Install with Vagrant

Requires base box. I used my own (anthshor/ol69) Oracle Linux 6 update 9, out of the box install. 

Replace 
```
  config.vm.box = "anthshor/ol69"
```
with you own base box in ```Vagrantfile```. Centos or RedHat should work also.

```
vagrant up
```
Browse to
http://192.168.33.20/mysite

Login omdadmin/omd

Reference for the monitoring software installed by this process

 - http://mathias-kettner.com/check_mk.html
