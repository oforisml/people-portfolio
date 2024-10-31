#!/bin/bash
cd infrustructure/terraform/
terraform apply -var-file=prod.tfvars --auto-approve



