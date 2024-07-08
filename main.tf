resource "aws_instance" "ec2_example" {
    ami = " "  
    instance_type = "t2.micro" 
    tags = {
        Name = "Terraform EC2"
    }
}
