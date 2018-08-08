# Vagrant Box with Ansible with MySQL, PHP7-fpm, and Nginx 
This vagrant box is with Ansible and contains MySQl, PHP7-fpm, and Nginx 

### How to install on Ubuntu? 

In order to set up vagrant environment on your Ubuntu operating system will need to install Virtual Box. 
So install VirtualBox 

`$ sudo apt-get install virtualbox`

Then, install Vagrant with:

`$ sudo apt-get install vagrant`

once vagrant is installed on Ubuntu operating system, we can verify it by following command:

`$ vagrant --version`

### How to install on Mac?

You can directly [download virtualbox](https://www.virtualbox.org/wiki/Downloads) and install or use homebrew for it.

`$ brew cask install virtualbox`

Now install Vagrant either [from the website](https://www.vagrantup.com/downloads.html) or use homebrew for installing it.

`$ brew cask install vagrant`

Vagrant-Manager helps you manage all your virtual machines in one place directly from the menubar.

`$ brew cask install vagrant-manager`


### What's inside? 

- [MySQL](https://dev.mysql.com/doc/)
- [PHP7-fpm](https://php-fpm.org)
- [Nginx](https://www.nginx.com/resources/wiki/community/) 

### Usage 

After you install vagant you can clone this project with 

`git clone https://github.com/AchuM/Ansible_MPN.git`

Go to the directory `cd Ansible_MPN` 

Now you can fire-up with 

`vagrant up`

Grab a cup of ☕️ while you wait for the box download ansible and finish installing all packages. 

After ⏳ you can access it through:

http://192.168.99.100 


## Taking to the next level

### How to provision AWS instance with Terrafrom?
After you setup the vagrant box you will have a change to take Anislbe playboxs to the cloud by provision with Terrafrom. 

Please follow the following steps:

Login to vagrant box with `vagrant ssh`

Go to vagrant mapped folder `cd /Vagrant`


 
