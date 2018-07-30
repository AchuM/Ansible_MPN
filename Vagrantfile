# Author Achu Abebe 
# Email achusime@gmail.com 

Vagrant.configure(2) do |config|

  config.vm.box = "bento/ubuntu-16.04"
  config.ssh.insert_key = false

  # Run Ansible from the Vagrant Box
  config.vm.provision "ansible_local" do |ansible|
    ansible.verbose = "vv"
    ansible.playbook = "playbooks/vagrant.yml"
  end
# Box accessble with
  config.vm.network "forwarded_port", guest: 80, host: 8080
  config.vm.network "private_network", ip: "192.168.10.10"
end
