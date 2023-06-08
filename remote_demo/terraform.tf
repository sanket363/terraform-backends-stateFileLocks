terraform {
  required_providers {
    mycloud = {
      source  = "hashicorp/aws"
      version = "4.66.1"
    }
  }

  backend "s3" {
    bucket = "terrafor-sanket-bucket-1234"
    key = "terraform.tfstate"
    region = "us-east-1"
    dynamodb_table = "terraweek_state_table"
  }
}

