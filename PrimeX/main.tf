#CREATE A VPC
resource "aws_vpc" "main_vpc" {
  cidr_block       = "10.0.0.0/22"
  instance_tenancy = "default"
  tags = {
    Name = "primeX-vpc-2"
  }
}