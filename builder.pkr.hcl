build {
  name = "linux-builder"

  source "source.amazon-ebs.vm" {
    ssh_username = "ec2-user"
  }

  provisioner "shell" {
    inline = [ "ansible-galaxy collection install community.general" ]
  }

  provisioner "file" {
    source      = "/var/jenkins_home/workspace/nexus-build/nexus3-oss/files/groovy"
    destination = "/tmp/groovy_scripts"
  }     

  provisioner "ansible" {
    playbook_file = "./main.yml"
  }
}
