provider "google"{
  project     = "ekke-cloud"
  region      = "europe-central2"
}

terraform{
    backend "gcs"{
        bucket = "r8wvbw"
        prefix = "terraform/r8wvbw"
    }
}