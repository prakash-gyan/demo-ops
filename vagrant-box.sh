#!/bin/bash
vagrant init
cat > Vagrantfile <<-EOF
Vagrant.require_version ">= 1.7.0"
Vagrant.configure(2) do |config|
	config.vm.box = "bento/ubuntu-18.04"
	config.ssh.insert_key = false
	config.vm.provision "ansible" do |ansible|
		ansible.verbose = "v"
		ansible.playbook = "playbook.yml"
	end
end
EOF
ansible-galaxy install dev-sec.os-hardening 
Vagrant up
Vagrant ssh
