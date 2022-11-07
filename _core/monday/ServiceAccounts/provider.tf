terraform {
 backend "gcs" {
   bucket  = "ekke-monday"
   prefix  = "terraform/monday/ServiceAccounts/"
 }
}