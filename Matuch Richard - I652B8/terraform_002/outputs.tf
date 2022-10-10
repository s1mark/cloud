output "file_id" {
  value = local_file.textf.id
}

output "more_files_id" {
  value = [
	for file in local_file.textf2 : file.id
  ]
}

output "more_files_id_from_map" {
  value = [
	for file in local_file.textf_map : file.id
  ]
}