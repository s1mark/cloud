resource "local_file" "testf_map" {
  for_each = var.files
  content = each.value
  filename = each.key
}