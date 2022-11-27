variable "project_id" {
  type = string
}
variable "image" {
  type = string
}
variable "nep_name" {
    type = string
}

variable disk_zone {
  type = string
  default = "europe-central2-a"
}
variable disk_image {
  type = string
  default = "debian-11-bullseye-v20220719"
}
variable disk_size {
  type = string
  default = "10"
}
variable disk_block_size_bytes {
  type = string
  default = "4096"
}