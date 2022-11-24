variable "service_accout_display_name" {
  type = string
  default = "OA4R7U Service Account"
}

variable "project" {
  type = string
  default = "ekke-cloud"
}

variable "region" {
  type = string
  default = "europe-central2"
}

variable "vm_name" {
  type = string
  default = "oa4r7u-vm"
}

variable "disk_name" {
  type = string
  default = "oa4r7u-disk"
}

variable "account_id" {
  type = string
  default = "oa4r7u"
}

variable "display_name" {
  type = string
}

variable "machine_type" {
  type = string
  default = "f1-micro"
}

variable "zone" {
  type = string
  default = "europe-central2-a"
}

variable disk_image {
    type = string
    default = "debian-11-bullseye-v20220719"
}

variable "disk_type" {
  type = string
  default = "pd-standard"
}

variable "disk_size" {
  type = string
  default = "10"
}

variable "disk_block_size_bytes" {
  type = string
  default = "4096"
}