build {
  name = "linux-builder"

  source "source.amazon-ebs.vm" {
    ssh_username = "ec2-user"
    
  }



  provisioner "file" {
    source      = "/var/lib/jenkins/workspace/nexus-build/nexus3-oss/files/groovy"
    destination = "/tmp/groovy_scripts"
  }     

  provisioner "shell" {
    inline = [ "ls -al" ]
    inline = [ "pwd" ]
    inline = [ "id" ]
  } 
  
}
