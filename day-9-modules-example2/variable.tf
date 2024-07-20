variable "module_ami_linux" {
  type = string
  description = "linux ami id"
  default = ""
}

variable "module_instance_type" {
    type = string
    description = "instance type"
    default = ""
  
}

variable "module_key_name" {
  type = string
  description = "key pair name"
  default = ""
}
variable "module_instance_name" {
  type = string
  description = "name of the instance"
  default = ""
}