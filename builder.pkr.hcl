build {
  name = "linux-builder"

  source "source.amazon-ebs.vm" {
    ssh_username = "ec2-user"
    temporary_key_pair_type = "ed25519"
    
  }
  provisioner "shell" {
    inline = [ "ansible-galaxy collection install community.general" ]
  }
  
  provisioner "file" {
    source      = "/var/jenkins_home/workspace/nexus-build/nexus3-oss/files/groovy"
    destination = "/tmp/groovy_scripts"
  }   
  
  provisioner "file" {
    source      = "/var/jenkins_home/workspace/nexus-build"
    destination = "/tmp"
  }   

  provisioner "shell" {
    inline = [ "cd /tmp/nexus-build", "ls -al", "pwd", "id", "ansible-playbook main.yml" ]
  } 
  
}
