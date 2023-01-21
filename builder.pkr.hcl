build {
  name = "linux-builder"

  source "source.amazon-ebs.vm" {
    ssh_username = "ec2-user"
  }

  provisioner "shell" {
    inline = [ "ansible-galaxy collection install community.general" ]
  }

  provisioner "file" {
    source      = "/tmp/jenkins/packer/nexus3-oss/files/groovy"
    destination = "/tmp/groovy_scripts"
  }     

  provisioner "ansible" {
    playbook_file = "./main.yml"
  }
}
