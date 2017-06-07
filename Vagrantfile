MY_VAR = ENV['MY_VAR']
vm_name = "checkmk.zoomer"
Vagrant.configure("2") do |config|
  config.vm.box = "anthshor/ol6"
  config.vm.hostname = vm_name
  config.vm.synced_folder "~/proxy", "/proxy"
  config.vm.synced_folder "software", "/u01/software"
  config.vm.network "private_network", ip: "192.168.33.20" 
  config.vm.provider :virtualbox do |vb|
    vb.customize ['modifyvm', :id, '--memory', '2048']
    vb.name=vm_name
  end
  config.vm.provision "shell",  path: "provision.sh", args: MY_VAR 
end
