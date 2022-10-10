
resource "local_file" "textf_map" {
  for_each = var.files
  content  = each.value
  filename = each.key
}