resource "google_compute_network" "vpc_network" {
  name = "tf-playground-network"
}

resource "google_compute_instance" "vm_instance" {
  name         = "tf-playground-instance"
  machine_type = "f1-micro"
  tags         = ["dev"]

  boot_disk {
    initialize_params {
      image = "ubuntu-os-cloud/ubuntu-1804-lts"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {}
  }
}

resource "google_compute_firewall" "tf-playground-network-firewall" {
  name    = "tf-playground-network"
  network = google_compute_network.vpc_network.name

  allow {
    protocol = "tcp"
    ports    = ["22"]
  }
}
