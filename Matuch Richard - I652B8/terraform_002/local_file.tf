resource "local_file" "textf" {
  content  = var.content
  filename = var.file_name
  lifecycle {
    prevent_destroy = true
  }
}

resource "local_file" "textf2" {
  count    = var.file_number
  content  = var.content
  filename = "${var.file_name}-${count.index}"
}

resource "local_file" "textf_map" {
  for_each = var.files
  content  = each.value
  filename = each.key
}