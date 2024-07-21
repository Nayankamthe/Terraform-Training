variable "ami" {
  type    = string
  default = "ami-08be1e3e6c338b037"
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}

variable "sandboxes" {
  type    = list(string)
  default = ["dev","prod","test"]
}