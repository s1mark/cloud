variable "vm_name" {
  type = string
  default = "fo5nvh-vm"
}

variable "vm_mach_type" {
  type = string
  default = "f1-micro"
}

variable "vm_zone" {
  type = string
  default = "europe-central2-a"
}

variable "vm_image" {
  type = string
  default = "debian-cloud/debian-11"
}

variable "vm_network" {
  type = string
  default = "default"
}

