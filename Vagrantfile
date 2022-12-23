Vagrant.configure("2") do |config|
 
  config.vm.define "dckm1" do |dckm1|
    dckm1.vm.box = "ubuntu/focal64"
    dckm1.vm.hostname = "dckm1"
    dckm1.vm.network "private_network", ip: "192.168.56.10"
    dckm1.vm.synced_folder "scripts", "/opt/scripts"
    dckm1.vm.network "forwarded_port", guest: 80, host: 80
    dckm1.vm.network "forwarded_port", guest: 443, host: 443
    dckm1.vm.network "forwarded_port", guest: 9000, host: 9000
    #dckm1.vm.provision "shell", inline: "sudo apt update && sudo apt upgrade -y"
    dckm1.vm.provision "shell", inline: "sudo chmod +x /opt/scripts/*"
    dckm1.vm.provision "shell", inline: "/opt/scripts/install_docker.sh"
    dckm1.vm.provision "shell", inline: "/opt/scripts/install_docker_compose.sh"
    dckm1.vm.provision "shell", inline: "/opt/scripts/install_portainer.sh"
    dckm1.vm.provision "shell", inline: "/opt/scripts/install_swarm.sh"
  end
 
  config.vm.define "dckn1" do |dckn1|
    dckn1.vm.box = "ubuntu/focal64"
    dckn1.vm.hostname = "dckn1"
    dckn1.vm.network "private_network", ip: "192.168.56.11"
    dckn1.vm.synced_folder "scripts", "/opt/scripts"    
    dckn1.vm.provision "shell", inline: "sudo apt update && sudo apt upgrade -y"
    dckn1.vm.provision "shell", inline: "sudo chmod +x /opt/scripts/*"
    dckn1.vm.provision "shell", inline: "/opt/scripts/install_docker.sh"
    dckn1.vm.provision "shell", inline: "/opt/scripts/join_swarm.sh"
    #dckn1.vm.provision "shell", inline: "mkdir -p /home/vagrant/jenkins_compose/jenkins_configuration"
  end

  config.vm.define "dckn2" do |dckn2|
    dckn2.vm.box = "ubuntu/focal64"
    dckn2.vm.hostname = "dckn2"
    dckn2.vm.network "private_network", ip: "192.168.56.12"
    dckn2.vm.synced_folder "scripts", "/opt/scripts"    
    dckn2.vm.provision "shell", inline: "sudo apt update && sudo apt upgrade -y"
    dckn2.vm.provision "shell", inline: "sudo chmod +x /opt/scripts/*"
    dckn2.vm.provision "shell", inline: "/opt/scripts/install_docker.sh"
    dckn2.vm.provision "shell", inline: "/opt/scripts/join_swarm.sh"
  end

  config.vm.define "dckstg" do |dckstg|
    dckstg.vm.box = "ubuntu/focal64"
    dckstg.vm.hostname = "dckstg"
    dckstg.vm.network "private_network", ip: "192.168.56.20"
    dckstg.vm.synced_folder "scripts", "/opt/scripts"    
    dckstg.vm.provision "shell", inline: "sudo apt update && sudo apt upgrade -y"
    dckstg.vm.provision "shell", inline: "sudo chmod +x /opt/scripts/*"
    dckstg.vm.provision "shell", inline: "/opt/scripts/install_docker.sh"
  end
end