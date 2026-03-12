terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0"
    }
  }
  # O "Cadeado" e a "Memória" agora ficam na nuvem
  backend "gcs" {
    bucket = "tf-state-ldp21k-1773332471"
    prefix = "terraform/exercises/02-vars-outputs-data"
  }
}




provider "google" {
  project = var.project_id
  region  = var.region
}

# Data Source: Fetching available zones from the region
data "google_compute_zones" "available" {
  status = "UP"
}


resource "google_compute_network" "vpc_network" {
  name = "${var.name_prefix}-${var.instance_name}-network"
}

resource "google_compute_instance" "vm_instance" {
  name         = "${var.name_prefix}-${var.instance_name}"
  machine_type = var.machine_type
  # Using the Data Source result (first zone available)
  zone = data.google_compute_zones.available.names[0]

  boot_disk {
    initialize_params {
      image = "debian-cloud/debian-11"
    }
  }

  network_interface {
    network = google_compute_network.vpc_network.name
    access_config {} # Requests an external IP
  }
}
