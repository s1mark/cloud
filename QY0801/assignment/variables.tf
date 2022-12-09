variable "project_name" {
  description = "Google Project Name"
  type        = string
  default     = "ekke-cloud-test"
}
variable "project_vm_name" {
  description = "Name of the GCP Virtual Machine"
  type        = string
  default     = "qy0801"
}
variable "project_vm_type" {
  description = "Type of the GCP Virtual Machine"
  type        = string
  default     = "f1-micro"
}
variable "project_region" {
  description = "Google Project Region"
  type        = string
  default     = "europe-central2"
}
variable "project_zone" {
  description = "Google Project Zone"
  type        = string
  default     = "europe-central2-a"
}
variable "project_bucket" {
  description = "Name of the GCP Bucket"
  type        = string
  default     = "qy0801-bucket-tfstate"
}
variable "project_serviceaccount_owner" {
  description = "Service Account Owner"
  type        = string
  default     = "Erdélyi Roland - QY0801"
}
