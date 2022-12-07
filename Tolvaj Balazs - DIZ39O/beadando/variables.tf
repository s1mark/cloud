variable "project_name" {
  type = string
  default = "ekke-cloud"
}

variable "project_neptun_code" {
  type = string
  default = "diz39o"
}

variable "provider_region" {
  type    = string
  default = "europe-central2"
}

variable "provider_zone" {
  type    = string
  default = "europe-central2-a"
}

variable "vm_instance_type" {
  type    = string
  default = "f1-micro"
}

variable "vm_instance_image" {
  type = string
  default = "debian-11-bullseye-v20220719"
}

variable "vm_network_interface" {
  type = string
  default = "default"
}
