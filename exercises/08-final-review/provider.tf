terraform {
  # Remote execution in HCP Terraform using WIF
  cloud {
    organization = "ldp21k"
    workspaces {
      name = "gcp-terraform-ascend-lab"
    }
  }

  required_providers {
    google = {
      source  = "hashicorp/google"
      version = "~> 5.0"
    }
  }
}

provider "google" {
  project = var.project_id
  region  = var.region
}