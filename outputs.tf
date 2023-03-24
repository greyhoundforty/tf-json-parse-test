output "instance_json" {
  value = jsonencode(ibm_compute_vm_instance.test)
}