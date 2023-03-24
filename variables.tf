variable "project_prefix" {
  description = "Prefix to add to all deployed resources. If none is provided, a random string will be generated."
  type        = string
  default     = ""
}

variable "existing_ssh_key" {
  description = "Name of the existing SSH key"
  type        = string
  default     = ""
}

variable "machine_type" {
  description = "Machine type to deploy the warpspeed virtual instance"
  type        = string
  default     = "BL2_2X8X100"
}

variable "os_reference_code" {
  description = "OS reference code to deploy the warpspeed virtual instance"
  type        = string
  default     = "UBUNTU_20_64"
}

variable "domain" {
  description = "Domain to deploy the warpspeed virtual instance"
  type        = string
  default     = "clouddesigndev.com"
}

variable "owner" {
  description = "Owner of the warpspeed virtual instance"
  type        = string
  default     = "ryantiffany"
}
