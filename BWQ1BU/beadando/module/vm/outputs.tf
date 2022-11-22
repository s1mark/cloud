data "google_project" "project" {
}

output "project_number" {
  value = data.google_project.project.number
}
output "project_id" {
  value = data.google_project.project.id
}
output "created_by" {
  value = "Kecse Károly Dániel (BWQ1BU)"
}