# cloud

## Classroom related content

### Notes

#### Változók deklarálása

```Terraform
variable "content" {
  type    = string
  default = "Test Content"
}
```

#### Változókra hivatkozás

```
var.content
```

#### Count deklarálása

```
count = 5
```

#### Count használata

```
"${count.index}"
```

#### Output használata

```
output "file_id" {
  value = local_file.test.id
}
```

#### Meta-Arguments

##### Map készítése

```
variable "files" {
  type = map(string)
  default = {
    "first"  = "First file content"
    "second" = "Second file content"
    "third"  = "Third file content"
  }
}
```

##### Map használata for_each-el

```
for_each = var.files
  filename = each.key
  content  = each.value
```

#### GCloud IAM

##### IAM module használata

```
resource "google_project_iam_binding" "project" {
  project = "ekke-cloud"
  role    = "roles/viewer"

  members = [
    "user:example@gmail.com",
  ]
}
```

##### Google provider.tf

```
provider "google" {
  project = "ekke-cloud"
  region  = "europe-central2"
}
```

### Commands

```
terraform init
```

```
terraform plan
```

```
terraform apply
```

```
terraform destroy
```

```
terraform fmt
```

```
gcloud auth login
```

```
gcloud config set project ekke-cloud
```
