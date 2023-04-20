provider "nutanix" {
  username = "your_username"
  password = "your_password"
  endpoint = "https://your_nutanix_cluster_ip:9440"
}

resource "nutanix_virtual_machine" "example_vm" {
  name         = "example-vm"
  num_vcpus    = 2
  memory_size  = 4096
  num_cores_per_vcpu = 1
  num_sockets = 2
  power_state = "ON"
  guest_os = "ubuntu16.04"
  description  = "Example VM"
  virtual_disks {
    disk_label = "example-disk"
    disk_size_bytes = 32212254720
    device_bus_type = "SCSI"
    device_index = 0
    is_cdrom = false
  }
  network_adapters {
    network_label = "example-network"
    nic_type = "vmxnet3"
  }
}
