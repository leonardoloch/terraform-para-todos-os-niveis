resource "aws_instance" "instance_count" {
  count         = 0
  ami           = "ami-08012c0a9ee8e21c4"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main.id
  user_data = <<EOF
#! /bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
echo "Ola Mundo" > /var/www/html/index.html
  EOF
  tags = {
    Name = "${local.resources-prefix}-${count.index}"
  }

  vpc_security_group_ids = [
    aws_security_group.security_group.id
  ]
}


resource "aws_instance" "instance_foreach_list" {
  for_each = toset(["seguranca", "marketing"])
  ami           = "ami-08012c0a9ee8e21c4"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main.id
  user_data = <<EOF
#! /bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
echo "Ola Mundo" > /var/www/html/index.html
  EOF
  tags = {
    Name = "${local.resources-prefix}-${each.value}"
  }

  vpc_security_group_ids = [
    aws_security_group.security_group.id
  ]
}


resource "aws_instance" "instance_foreach_map" {
  for_each = {
    equipe_a = "seguranca"
    equipe_b = "marketing"
  }
  ami           = "ami-08012c0a9ee8e21c4"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main.id
  user_data = <<EOF
#! /bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
echo "Ola Mundo" > /var/www/html/index.html
  EOF
  tags = {
    Name = "${local.resources-prefix}-${each.value}-${each.key}"
  }

  vpc_security_group_ids = [
    aws_security_group.security_group.id
  ]
}

resource "aws_instance" "instance_foreach_map_2" {
  for_each = {
    equipe_a = { nome = "seguranca", responsavel = "Andre"}
    equipe_b = { nome = "marketing", responsavel = "Mariana"}
  }
  ami           = "ami-08012c0a9ee8e21c4"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main.id
  user_data = <<EOF
#! /bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
echo "Ola Mundo" > /var/www/html/index.html
  EOF
  tags = {
    Name = "${local.resources-prefix}-${each.value.nome}-${each.key}"
    Responsavel = each.value.responsavel
  }

  vpc_security_group_ids = [
    aws_security_group.security_group.id
  ]
}

resource "aws_instance" "instance_condicional" {
  ami           = "ami-08012c0a9ee8e21c4"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main.id
  user_data = <<EOF
#! /bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
echo "Ola Mundo" > /var/www/html/index.html
  EOF
  tags = {
    Name = "${local.instancia_name}"
  }

  vpc_security_group_ids = [
    aws_security_group.security_group.id
  ]
}

resource "aws_instance" "instance_condicional_count" {
  count = var.ambiente == "production" ? 2 : 1
  ami           = "ami-08012c0a9ee8e21c4"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main.id
  user_data = <<EOF
#! /bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
echo "Ola Mundo" > /var/www/html/index.html
  EOF
  tags = {
    Name = "${local.instancia_name}-${count.index}"
  }

  vpc_security_group_ids = [
    aws_security_group.security_group.id
  ]
}

resource "aws_instance" "instance_condicional_count_2" {
  count         = var.ambiente == "production" ? 0 : 1
  ami           = "ami-08012c0a9ee8e21c4"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main.id
  user_data     = <<EOF
#! /bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
echo "Ola Mundo" > /var/www/html/index.html
  EOF
  tags = {
    Name = "${local.instancia_name}-${count.index}"
  }

  vpc_security_group_ids = [
    aws_security_group.security_group.id
  ]
}


resource "aws_instance" "instance_life_cycle" {
  ami           = "ami-08012c0a9ee8e21c4"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main.id
  user_data     = <<EOF
#! /bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
echo "Ola Mundo" > /var/www/html/index.html
  EOF
  tags = {
    Name = "curso-terraform-2"
  }

  vpc_security_group_ids = [
    aws_security_group.security_group.id
  ]

  lifecycle {
    # prevent_destroy = true
    ignore_changes = [ tags ]
    replace_triggered_by = [ aws_vpc_security_group_ingress_rule.allow_80 ]
    # create_before_destroy = true
  }
}


resource "aws_instance" "instance_funcoes" {
  ami           = "ami-08012c0a9ee8e21c4"
  instance_type = "t2.micro"
  subnet_id     = aws_subnet.main.id
  user_data     = <<EOF
#! /bin/bash
sudo apt-get update
sudo apt-get install -y apache2
sudo systemctl start apache2
sudo systemctl enable apache2
echo "Ola Mundo" > /var/www/html/index.html
  EOF
  tags = {
    Name = "curso-terraform"
  }

  vpc_security_group_ids = [
    aws_security_group.security_group.id
  ]
}