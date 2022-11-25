output "creator" {
    value = "Gabor Sarosi"
}

output "creation_year" {
    value = "2022"
}

output "vm_name" {
    value = data.google_compute_instance.vm_data.name
}