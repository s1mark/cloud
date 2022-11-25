resource "google_compute_disk" "default" {
  name  = "wgxnp2"
  type  = "pd-ssd"
  zone  = "europe-central2"
  size = 10
  physical_block_size_bytes = 4096
}