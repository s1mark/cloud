terraform {
 backend "gcs" {
   bucket  = "ekke-monday"
   prefix  = "terraform/monday/ServiceAccounts/FQ4AC3"
 }
}