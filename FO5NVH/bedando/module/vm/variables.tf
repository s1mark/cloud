variable "neptun_kod" {
  type = string
  default = "fo5nvh"
}

//vm
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

//disk

variable "disk_type" {
  type = string
  default = "pd-standard"
}

variable "disk_zone" {
  type = string
  default = "europe-central2-a"
}

variable "disk_image" {
  type = string
  default = "debian-11-bullseye-v20220719"
}

variable "disk_size" {
  type = string
  default = "10"
}

variable "disk_block_size" {
  type = string
  default = "4096"
}