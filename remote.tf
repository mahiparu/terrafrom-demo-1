resource "null_resource" "remote"{
connection {
       type = "ssh"
       user = "ec2-user"
       private_key = file("/root/terrafrom-project1/ravi_y.pem")
       host  = aws_instance.instance.public_ip
}
provisioner "remote-exec" {
         inline = [
                       "sudo yum install httpd -y",
                       "sudo yum install git -y",
                       "sudo systemctl enable httpd",
                       "sudo git clone https://github.com/florient2016/myweb.git /var/www/html/web/",
                       "sudo systemctl start httpd"
                  ]
  }
}
