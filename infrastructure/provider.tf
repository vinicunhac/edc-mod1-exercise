provider "aws"{
    region = var.aws_region
}

# Centralizar o arquivo de controle de estado do TF
terraform {
  backend "s3"{
    bucket = "terraform-state-vin-xp"
    key    = "state/xp/edc/mod1/terraform.trfstate"
    region = "us-east-2"
  }
}
