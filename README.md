#####
##docker-compose deployment:
# Pre-requisite:
	-- Vagrant should be installed and configured on the system
	-- Ansible and ansible-galaxy should be installed on the system
	-- VirtualBox should be installed on the system

##clone the repo using command "git clone https://github.com/prakash-gyan/demo-ops.git"

##Run "vagrant-box.sh" shell script from the local dir where the you have cloned the repo:
  sh vagrant-box.sh  // This will deploy a Vagrant ubuntu 18.04 machine, harden it and do ssh. You can verify the application on 			port 8000 (curl localhost:8000)

######
##Kubernetes deployemnt:
# Pre-requisite
	-- kubernetes cluster should be up and running with kubectl
   Run "kubectl apply -f k8s-deploymnet.yml" to deploy the application and verify it using NodePort
