#Megadja, hogy melyik projektet használjuk és melyik ráégióban
provider "google" {
   project="ekke-cloud"
   region="europe-central2"
}

#state fáljt a megadott bucket-ben hozza létre
terraform {
  backend "gcs" {
    bucket = "h36og5"
  }
}