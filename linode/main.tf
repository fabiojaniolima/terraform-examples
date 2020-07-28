provider "linode" {
  token = var.token
}

locals {
  instance_type = "g6-standard-1"
}

data "linode_instance_type" "details" {
  id = local.instance_type
}

resource "linode_instance" "vm" {
  count = length(var.instances_name)

  label           = var.instances_name[count.index]
  region          = var.region
  image           = "linode/debian10"
  type            = local.instance_type
  root_pass       = var.root_pass
  authorized_keys = [for key in var.authorized_keys : chomp(file(key))]

  tags = var.identification_tags

  #provisioner "remote-exec" {
  #  inline = [
  #    "curl -fsSL https://get.docker.com -o get-docker.sh",
  #    "sh get-docker.sh",
  #  ]
  #
  #  connection {
  #    type     = "ssh"
  #    user     = "root"
  #    password = var.root_pass
  #    host     = self.ip_address
  #  }
  #}
}
