Add this to the terraform file:

```sh
terraform {
  backend "s3" {
    bucket         = "remote-state-bucket"
    key            = "terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "remote-state-table"
    encrypt        = true
  }
}
```
Reinitialize with remote backend
```sh
terraform init
