variable "region" {
  type    = string
  default = "ca-central-1"
}

variable "sg-name" {
  type    = string
  default = "Ansible-sg"
}

variable "keypair-name" {
  type    = string
  default = "ansible-key"
}

variable "instance_configurations" {
  type = map(object({
    instance_type = string
    name          = string
    user_data     = string
    ami           = string
  }))

  
}

locals {
  ubuntu = data.aws_ami.ubuntu.id
  debian = data.aws_ami.debian.id
  amz    = data.aws_ami.amazon-2.id
}