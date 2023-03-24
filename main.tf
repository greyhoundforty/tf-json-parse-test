# To avoid having to specify a prefix, a random string is generated if none is provided. Also helps prevent naming collisions.
resource "random_string" "prefix" {
  length  = 4
  special = false
  upper   = false
}

resource "ibm_compute_vm_instance" "test" {
  hostname                 = local.prefix
  domain                   = var.domain
  os_reference_code        = var.os_reference_code
  datacenter               = "dal10"
  network_speed            = 1000
  hourly_billing           = true
  local_disk               = true
  private_network_only     = false
  flavor_key_name          = "BL2_2X8X100"
  tags                     = local.tags
  public_vlan_id           = "1379"
  private_vlan_id          = 1679
  dedicated_acct_host_only = false
  ipv6_enabled             = true
}


