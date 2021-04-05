
resource "google_compute_instance" "default" {
  project      = var.project
  count        = var.amount
  name         = "${var.name_prefix}-${count.index+1}"
  machine_type = var.machine_type
  zone         = var.zone
  tags         = [var.tags]
  boot_disk {
    initialize_params {
      image = var.image
    }
  }

  network_interface {
    network = var.subnetwork
    access_config {
      // Ephemeral IP
    }
  }
}
