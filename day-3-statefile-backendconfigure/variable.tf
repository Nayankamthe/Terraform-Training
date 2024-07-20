variable "ami_id" {
  type = string
  description = "ami id of linux instance"
  default = ""
}

variable "key_name" {
  type = string
  description = "key name of linux instance"
  default = ""
}

variable "instance_type" {
  type = string
  description = "type of instance."
  default = ""
}

