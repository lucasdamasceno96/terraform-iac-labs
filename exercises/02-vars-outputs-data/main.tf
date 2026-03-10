# main.tf
terraform {
  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 6.0" # O símbolo ~> garante que usaremos versões compatíveis
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}

resource "google_compute_network" "vpc_network" {
  name = "${var.instance_name}-vpc" # Interpolação de string
}
