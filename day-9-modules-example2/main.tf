module "dev" {
  source = "github.com/Nayankamthe/Terraform-Training/day-8-modules-instance"
  ami_linux = var.module_ami_linux
  instance_type = var.module_instance_type
  key_name = var.module_key_name
  instance_name = var.module_instance_name
  
}