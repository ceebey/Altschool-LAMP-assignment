Vagrant.configure("2") do |config|
  
  # Define the 'Slave' Node
config.vm.define "slave" do |slave|
    slave.vm.box = "ubuntu/focal64"
    slave.vm.hostname = "Slave"
    slave.vm.network "private_network", ip: "192.168.56.30"
    slave.vm.boot_timeout = 1800
    # Provision the 'Slave' VM with a LAMP stack using a shell script
    slave.vm.provision "shell", path: "deploy.sh"
   
  end

  # Define the Load balancer
  config.vm.define "loadbal" do |loadbal|
    loadbal.vm.box = "ubuntu/focal64"
    loadbal.vm.hostname = "loadbal"
    loadbal.vm.network "private_network", ip: "192.168.56.4"
    loadbal.vm.boot_timeout = 1800
    loadbal.vm.provision "shell", path: "loadbalancer.sh"
  end

  # Define the 'Master' Node
 config.vm.define "master01" do |master01|
  master01.vm.box = "ubuntu/focal64"
  master01.vm.hostname = "Master"
  master01.vm.network "private_network", ip: "192.168.56.2"
  master01.vm.boot_timeout = 1800
  # Provision the 'Master' VM with a LAMP stack using a shell script
  master01.vm.provision "shell", path: "deploy.sh"
  master01.vm.provision "shell", path: "user_management.sh"
  master01.vm.provision "shell", path: ".ssh_key_auth.sh"
  master01.vm.provision "shell", path: "data_transfer.sh"
  master01.vm.provision "shell", path: "process_monitor.sh"
 end
end