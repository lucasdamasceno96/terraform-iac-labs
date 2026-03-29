terraform {
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
  # No credentials file needed here! 
  # HCP Terraform will inject temporary tokens.
}