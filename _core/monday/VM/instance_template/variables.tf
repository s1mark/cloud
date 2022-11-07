variable "project_id" {
  description = "The GCP project to use for integration tests"
  type        = string
  default     = "ekke-cloud"
}

variable "region" {
  description = "The GCP region to create and test resources in"
  type        = string
  default     = "europe-central2-a"
}


variable "service_account" {
  default = null
  type = object({
    email  = string
    scopes = set(string)
  })
  description = "Service account to attach to the instance. See https://www.terraform.io/docs/providers/google/r/compute_instance_template.html#service_account."
}
