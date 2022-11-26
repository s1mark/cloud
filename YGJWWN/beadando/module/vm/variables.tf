variable "service_account_id" {
  type = string
}

variable "vm_name" {
  type    = string
  default = "ygjwwn"
}

variable "vm_type" {
  type    = string
  default = "f1-micro"
}

variable "vm_zone" {
  type    = string
  default = "europe-central2-a"
}

variable "vm_network_interface" {
  type    = string
  default = "default"
}

variable "filename" {
  type    = string
  default = "task"
}

variable "file_content" {
  type    = string
  default = "done"
}

variable "disk_name" {
  type    = string
  default = "ygjwwn-disk"
}

variable "disk_type" {
  type    = string
  default = "pd-standard"
}

variable "disk_zone" {
  type    = string
  default = "europe-central2-a"
}

variable "disk_image" {
  type    = string
  default = "debian-11-bullseye-v20220719"
}

variable "disk_size" {
  type    = number
  default = 10
}

variable "disk_block_size" {
  type    = number
  default = 4096
}
