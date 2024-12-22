resource "aws_instance" "eugene" {
  ami                    = var.ami
  instance_type          = var.instance_type["dev"]
  subnet_id              = aws_subnet.private.id 
  tags = {
    Name = "${var.name_prefix}-WebServer"
  }
}


 #############################################
 # VPC CONFIGURATION
 #############################################
 resource "aws_vpc" "main" {
  cidr_block = var.vpc_cidr
  tags = {
    Name = "${var.name_prefix}-vpc"
  }
}


resource "aws_subnet" "private" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.private_subnet_cidr
  tags = {
    Name = "${var.name_prefix}-private-subnet"
  }
}

resource "aws_subnet" "public" {
  vpc_id     = aws_vpc.main.id
  cidr_block = var.public_subnet_cidr
  tags = {
    Name = "${var.name_prefix}-public-subnet"
  }
}
