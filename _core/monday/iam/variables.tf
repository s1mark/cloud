// variables
variable "users" {
    /*type = list
    default = [
        "user:domi0718nika@gmail.com",
        "user:erdelyi.roland99@gmail.com",
        "user:bpuszta@gmail.com",
        "user:crazymark1lol@gmail.com",
        "user:tolvibalazs@gmail.com",
        "user:utassy.denis@gmail.com",
        "user:sarosigab@gmail.com",
        "user:banyiknandor1@gmail.com",
        "user:gaboly15@gmail.com",
        "user:dragonhun98@gmail.com",
        "user:richardmatuch@gmail.com",
        "user:kecsekarolydaniel@gmail.com",
        "user:vivien.kulcsar88@gmail.com",
    ]*/
    type = map
    default = {
    "roles/compute.networkAdmin" = [
      "serviceAccount:my-sa@my-project.iam.gserviceaccount.com",
      "group:my-group@my-org.com",
      "user:domi0718nika@gmail.com",
      "user:erdelyi.roland99@gmail.com",
      "user:bpuszta@gmail.com",
      "user:crazymark1lol@gmail.com",
      "user:tolvibalazs@gmail.com",
      "user:utassy.denis@gmail.com",
      "user:sarosigab@gmail.com",
      "user:banyiknandor1@gmail.com",
      "user:gaboly15@gmail.com",
      "user:dragonhun98@gmail.com",
      "user:richardmatuch@gmail.com",
      "user:kecsekarolydaniel@gmail.com",
      "user:vivien.kulcsar88@gmail.com",
    ]
    "roles/appengine.appAdmin" = [
      "serviceAccount:my-sa@my-project.iam.gserviceaccount.com",
      "group:my-group@my-org.com",
      "user:domi0718nika@gmail.com",
      "user:erdelyi.roland99@gmail.com",
      "user:bpuszta@gmail.com",
      "user:crazymark1lol@gmail.com",
      "user:tolvibalazs@gmail.com",
      "user:utassy.denis@gmail.com",
      "user:sarosigab@gmail.com",
      "user:banyiknandor1@gmail.com",
      "user:gaboly15@gmail.com",
      "user:dragonhun98@gmail.com",
      "user:richardmatuch@gmail.com",
      "user:kecsekarolydaniel@gmail.com",
      "user:vivien.kulcsar88@gmail.com",
    ]
    "roles/iap.tunnelResourceAccessor" = [
      "serviceAccount:my-sa@my-project.iam.gserviceaccount.com",
      "group:my-group@my-org.com",
      "user:domi0718nika@gmail.com",
      "user:erdelyi.roland99@gmail.com",
      "user:bpuszta@gmail.com",
      "user:crazymark1lol@gmail.com",
      "user:tolvibalazs@gmail.com",
      "user:utassy.denis@gmail.com",
      "user:sarosigab@gmail.com",
      "user:banyiknandor1@gmail.com",
      "user:gaboly15@gmail.com",
      "user:dragonhun98@gmail.com",
      "user:richardmatuch@gmail.com",
      "user:kecsekarolydaniel@gmail.com",
      "user:vivien.kulcsar88@gmail.com",
    ]
  }
}
/*
variable "roles"{
    type = list
    default = [
        "roles/compute.networkAdmin",
        "roles/appengine.appAdmin",
        "roles/iap.tunnelResourceAccessor"
    ]
}*/