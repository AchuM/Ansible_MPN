# Author Achu Abebe 
# Email achusime@gmail.com 

Vagrant.configure(2) do |config|

  config.vm.box = "bento/ubuntu-18.04"
  config.ssh.username = 'vagrant'
  config.ssh.password = 'vagrant'
  config.ssh.forward_agent = true
  
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "private_network", ip: "192.168.10.10"

  config.vm.synced_folder ".", "/vagrant", type: "virtualbox"
  
  # Run Ansible from the Vagrant Box
  config.vm.provision "ansible_local" do |ansible|
  	ansible.verbose = "vv"
    ansible.playbook = "vagrant.yml"
end
end

