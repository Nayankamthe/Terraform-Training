
resource "aws_instance" "dev" {
    ami = "ami-08be1e3e6c338b037"
    instance_type = "t2.micro"
    availability_zone = "us-east-2a"
    key_name = "public-1"

    lifecycle {
      precondition {
        condition = data.aws_ami.amzlinux.architecture=="x86_64"
        error_message = "The selected AMI must be for the x86_64 architecture."
      }
    }
    
  tags = {
    Name = "EC2-custom-1"
  }




#below examples are for lifecycle meta_arguments 

#   lifecycle {
#     create_before_destroy = true    #this attribute will create the new object first and then destroy the old one
#   }

# lifecycle {
#   prevent_destroy = true    #Terraform will error when it attempts to destroy a resource when this is set to true:
# }


#   lifecycle {
#     ignore_changes = [tags,] #This means that Terraform will never update the object but will be able to create or destroy it.
#   }

#     lifecycle {
#     replace_triggered_by = [tags,] #Replaces the resource when any of the referenced items change. Supply a list of expressions referencing managed resources, instances, or instance attributes.
#   }

    

}