variable "ami" {
  description = "The AMI to use for the instance"
  default     = "ami-05d38da78ce859165"
}

variable "instance_type" {
  type  = map
  default = {
    "prod" = "t3.large"
    "dev" = "t2.micro"
  }
}

variable "instance_name" {
  description = "The name of the instance"
  default     = "Eugenekofi"
}

variable "name_prefix" {
  description = "This prefix will be added to the name of almost every resources created "
  type        = string
  default     = "pek"
}

variable "vpc_cidr" {
  description = "The VPC CIDR range to use for the virtual network"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_id" {
  description = "The ID of the VPC to use to create our seurity group"
  type        = string
  default     = "vpc-05181879719378d88"
} 

variable "private_subnet_cidr" {
  description = "The CIDR range to use for the private subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "public_subnet_cidr" {
  description = "The CIDR range to use for the public subnet"
  type        = string
  default     = "10.0.0.0/24"
}
