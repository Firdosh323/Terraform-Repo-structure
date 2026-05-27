# GCP Terraform Repository Structure

This repository is organized for GCP Terraform work.
It separates reusable modules, environment code, scripts, policies, and CI/CD files.

## Folder structure

```text
.
|-- ci-cd/
|-- environments/
|   |-- dev/
|   |   |-- backend.tf
|   |   |-- main.tf
|   |   |-- outputs.tf
|   |   |-- provider.tf
|   |   `-- terraform.tfvars
|   |-- stage/
|   |   |-- backend.tf
|   |   |-- main.tf
|   |   |-- outputs.tf
|   |   |-- provider.tf
|   |   `-- terraform.tfvars
|   `-- prod/
|       |-- backend.tf
|       |-- main.tf
|       |-- outputs.tf
|       |-- provider.tf
|       `-- terraform.tfvars
|-- modules/
|   |-- compute-engine/
|   |-- gke/
|   `-- vpc/
|-- policies/
|-- scripts/
`-- README.md
```

## Simple explanation

- `modules/` keeps reusable building blocks like VPC, GKE, and Compute Engine.
- `environments/` keeps separate Terraform configuration for `dev`, `stage`, and `prod`.
- Each environment has its own backend, provider, main resources, outputs, and tfvars file.
- `ci-cd/` is for pipeline files.
- `policies/` is for policy-related files.
- `scripts/` is for helper scripts.

Right now, some folders are placeholders and can be filled as the project grows.
This structure is clean and practical for managing GCP infrastructure across multiple environments.
