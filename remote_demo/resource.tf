provider "aws" {
  region = "us-west-2"  # Replace with your desired AWS region
}

resource "aws_instance" "example" {
  count         = 3
  ami           = "ami-053b0d53c279acc90"  # Replace with the desired AMI ID
  instance_type = "t2.micro"
}
