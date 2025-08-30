<h1 align="center"> Terraform </h1>

---

## Overview

This repository contains Terraform configuration files to provision and manage cloud infrastructure using **Infrastructure as Code (IaC)**. It is modular, reusable, and follows best practices for provisioning secure and scalable environments.

### **Terraform Commands**
```sh
terraform init # Initializes the project and downloads provider plugins

terraform fmt       # Formats Terraform code

terraform validate  # Validates Terraform syntax

terraform plan      # Shows execution plan without applying

terraform apply     # Creates/updates infrastructure

terraform apply -auto-approve  # Applies without manual confirmation

terraform destroy  # Destroys all managed resources

terraform destroy -auto-approve  # destroys without manual confirmation

terraform workspace new dev

terraform workspace new prod

terraform workspace select prod

terraform workspace list
