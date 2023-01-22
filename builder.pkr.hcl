build {
  name = "linux-builder"

  source "source.amazon-ebs.vm" {
    ssh_username = "ec2-user"
    
  }


  provisioner "file" {
    source      = "/var/lib/jenkins/workspace/nexus-build/nexus3-oss/files/groovy"
    destination = "/tmp/groovy_scripts"
  }     

  provisioner "ansible" {
    playbook_file = "./main.yml"
    extra_arguments =  ["-e ansible_ssh_extra_args='-o StrictHostKeyChecking=no'"]
  }
}
