resource "local_file" "test" {

  for_each = var.files
  filename = each.key
  content  = each.value
  lifecycle {
    prevent_destroy = true
  }
  #count    = var.file_number
  #content  = var.content
  #filename = "${var.file_name}${count.index}"
}
