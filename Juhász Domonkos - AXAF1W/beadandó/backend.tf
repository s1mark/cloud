terraform {  //usage of the bucket on Google Cloud to store the state file
  backend "gcs" {
    bucket  = "axaf1w"
    prefix  = "terraform/axaf1w"
  }
}