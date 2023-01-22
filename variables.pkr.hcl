variable "region" {
  type    = string
  default = "eu-west-2"
}

variable "instance_type" {
  type    = string
  default = "t2.medium"
}

variable "ami_name" {
  type    = string
  default = "nexus-tet"
}

variable "base_ami" {
  type    = string
  default = "ami-0ef4a91e9909af693"
}

variable "subnet_id" {
  type    = string
  default = "subnet-1bd65a61"
}

variable "security_group_id" {
  type    = string
  default = "sg-0fb78ff9fe25ee018"
}
