variable "main_name" {
  description = "name of the computer instance"
  type        = string
  default     = "ekke-cloud_ddq7ji"
}

variable "main_mac_tp" {
  description = "machine type"
  type        = string
  default     = "f1-micro"
}

variable "main_zone" {
  description = "global time zone"
  type        = string
  default     = "europe-central2-a"
}

variable "provider_name" {
  description = "provider's name"
  type        = string
  default     = "ekke-cloud"
}
variable "provider_region" {
  description = "region"
  type        = string
  default     = "europe-central2"
}

variable "main_image" {
  description = "image"
  type        = string
  default     = "debian-cloud/debian-11"
}