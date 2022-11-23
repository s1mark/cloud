data "google_project" "project" {
}

output "project_id" {
  value = data.google_project.project.id
}
output "project_number" {
  value = data.google_project.project.number
}