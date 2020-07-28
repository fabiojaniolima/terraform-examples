output "instance_details" {
  value = [
    for vm in linode_instance.vm : {
      label = vm.label
      ip    = vm.ip_address
    }
  ]
}

output "linode_type" {
  value = {
    label    = data.linode_instance_type.details.label
    class    = data.linode_instance_type.details.class
    price    = data.linode_instance_type.details.price
    memory   = data.linode_instance_type.details.memory
    disk     = data.linode_instance_type.details.disk
    transfer = data.linode_instance_type.details.transfer
    vcpus    = data.linode_instance_type.details.vcpus
  }
}
