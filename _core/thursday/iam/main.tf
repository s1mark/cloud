resource "google_project_iam_binding" "project" {
  project = "ekke-cloud"
  role    = "roles/viewer"

  members = [
    "user:simark2357@gmail.com",
    "user:boldi.szenczi@gmail.com",
    "user:j.domonkos01@gmail.com",
    "user:bence.beregszaszi.1@gmail.com",
    "user:batordtoth@gmail.com",
    "user:galvacs11@gmail.com",
    "user:kissolga0904@gmail.com",
    "user:k.dorina33@gmail.com",
    "user:konya.donat@gmail.com",
    "user:horvathmarton02@gmail.com",
    "user:imre123456.ing5@gmail.com",
    "user:batcavechannel@gmail.com"
  ]
}