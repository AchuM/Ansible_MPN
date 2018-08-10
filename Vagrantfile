#Author Achu Abebe
#Email achusime@gmail.com
Vagrant.configure("2") do |config|

  config.vm.box = "axeloz/ubuntu-server-16.04"


  #config.ssh.private_key_path="~/.ssh/id_rsa"
  config.ssh.username = 'vagrant'
  config.ssh.password = 'vagrant'
  config.ssh.forward_agent = true
  # using a specific IP.
  config.vm.network "private_network", ip: "192.168.99.100"
#Installing Terraform
  mkdir -p /opt/terraform
  pushd /opt/terraform
  wget -q https://releases.hashicorp.com/terraform/0.8.8/terraform_0.8.8_linux_amd64.zip
  unzip -q -o terraform_0.8.8_linux_amd64.zip
#config.vm.synced_folder ".", "/vagrant", type: "nfs" 
config.vm.synced_folder ".", "/vagrant", type: "virtualbox"
config.vm.provider "virtualbox" do |vb|
  #   # Customize the amount of memory on the VM:
    vb.memory = "1024"
    vb.name = "vagrant_anisible"
  end
  

  config.vm.provision "ansible_local" do |ansible|
    ansible.verbose = "vv"
    ansible.playbook = "roles/vagrant.yml"
end
end
