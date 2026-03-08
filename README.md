# Project: Terraform-iac-labs 🚀

This repository is dedicated to the study and preparation for the **HashiCorp Certified: Terraform Associate (004)** exam. All practical laboratories are implemented using **Google Cloud Platform (GCP)**.

## 🎯 Objective

Master Terraform core concepts, workflows, and best practices while gaining hands-on experience in provisioning Google Cloud infrastructure.

## 📂 Repository Structure

The project follows a Mono-Repo structure organized by technical exercises:

- `exercises/`: Step-by-step labs mapping the official Exam Content List.
- `modules/`: Custom reusable Terraform modules.
- `labs/`: Sandbox for specific experiments.

## 🛠 Prerequisites

- [Google Cloud SDK](https://cloud.google.com/sdk/docs/install)
- [Terraform CLI](https://developer.hashicorp.com/terraform/downloads) (v1.0+)
- GCP Account with an active Project.

## 📜 Study Roadmap (Exam 004 Mapping)

1. **Ex-01:** IaC Fundamentals & GCP Setup (Topic 1)
2. **Ex-02:** Terraform Basics & Providers (Topic 2 & 3)
3. **Ex-03:** Variables, Outputs, and Data Sources (Topic 8)
4. **Ex-04:** State Management & Remote Backends (Topic 7)
5. **Ex-05:** The Core Workflow (Init, Plan, Apply, Destroy) (Topic 6)
6. **Ex-06:** Modules for GCP (Topic 5)
7. **Ex-07:** Functions, Expressions & Dynamic Blocks (Topic 8)
8. **Ex-08:** Advanced State (Import, Move, Drift) (Topic 4 & 7)
9. **Ex-09:** Terraform Cloud/HCP Fundamentals (Topic 9)
10. **Ex-10:** Final Certification Mock Exam

## ⚠️ Important Note

**ALWAYS** run `terraform destroy` after finishing an exercise to avoid unexpected costs in your GCP account.
