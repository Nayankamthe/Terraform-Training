variable "vpc_cidr_block" {
  type = string
  description = "cidr_block of the VPC"
  default = "10.0.0.0/16"
}
variable "vpc_name" {
  type = string
  description = "vpc name"
  default = ""
}

variable "aws_public_subnet_cidr_block" {
  type = string
  description = "cidr_block of the public Subnet"
}

variable "aws_public_subnet_name" {
  type = string
  description = "public Subnet name"
  default = ""
}
variable "aws_internet_gateway_name" {
  type = string
  description = "Internet Gateway name"
  default = ""
}

variable "aws_public_route_table_name" {
  type = string
  description = "Public route table name"
  default = ""
}

variable "aws_public_route_table_cidr_block" {
  type = string
  description = "Public Route table cidr_block"
  default = "0.0.0.0/0"
}



variable "aws_security_group_name" {
    type = string
    description = "Security Group Name"
    default = ""
}

variable "aws_security_group_description" {
    type = string
    description = "Security Group description"
    default = ""
}
variable "aws_security_group_tags-name" {
    type = string
    description = "Security Group Tags Name"
    default = ""
}

variable "ami" {
  type        = string
  description = "ami-of-linux"
  default     = ""
}
variable "instance_type" {
  type        = string
  description = "instance type of EC2"
  default     = ""
}
variable "key_name" {
  type        = string
  description = "key of the EC2"
  default     = ""

}

variable "tags-name" {
  type        = string
  description = "Name tags of EC2"
  default     = ""

}
variable "tags-name-private" {
  type        = string
  description = "Name tags of EC2"
  default     = ""

}