provider "google" {
  project     = "terraform-lab-414811"
  region      = "us-central1"
  zone        = "us-central1-b"
}

resource "google_compute_instance" "ubuntu_instance" {
  name         = "ubuntu-instance1"
  machine_type = "n1-standard-1"
  zone         = "us-central1-b"

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-2004-lts"  # Ubuntu 20.04 LTS image
    }
  }

  network_interface {
    network = "default"  # Use the default network
  }
}
