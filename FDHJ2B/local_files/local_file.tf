resource "local_file" "foo" {
    count    = var.file_number
    content  = var.content
    filename = "${var.file_name}-${count.index}"
}

resource "local_file" "textf_map" {
  for_each = var.files
  content  = each.value
  filename = each.key
#  content  = each.value.content
#  filename = each.value.filename
}