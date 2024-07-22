resource "aws_instance" "instance" {
  ami           = "ami-08012c0a9ee8e21c4"
  instance_type = "t2.micro"
  subnet_id     = module.vpc.public_subnets[0]
  user_data = <<EOF
#! /bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
echo "Ola Mundo" > /var/www/html/index.html
  EOF
  tags = {
    Name = local.resources-prefix
  }

  vpc_security_group_ids = [
    aws_security_group.security_group.id
  ]
}

