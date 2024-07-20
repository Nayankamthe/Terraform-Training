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
