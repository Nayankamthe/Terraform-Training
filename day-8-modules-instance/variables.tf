variable "ami_linux" {
  type = string
  description = "amazon linux"
}

variable "instance_type" {
  type = string
  description = "instance type"
  default = ""
}

variable "instance_name" {
  type = string
  description = "name of the instnace"
  default = ""
}
variable "key_name" {
  type = string
  description = "key name of instnace"
  default = ""
}