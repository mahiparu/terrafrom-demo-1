resource "aws_instance" "ec2_example" {
    ami = " "  
    instance_type = "t2.micro" 
    tags = {
        Name = "Terraform EC2"
    }
}



///
resource "aws_instance" "instance"{
      ami = "ami-04629cfb3bd2d73f3"        
      instance_type = "t2.micro"
      security_groups = ["default"]
      key_name = "ravi_y"
      tags = {
            Name = "Web-server-by-TerraForm"
      }
}
output "my-public-ip"{
       value= aws_instance.instance.public_ip
}
///
