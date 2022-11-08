terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-2"
}

resource "aws_instance" "wvdterraformtest" {
  ami           = "ami-02d1e544b84bf7502"
  instance_type = "t2.micro"

}
