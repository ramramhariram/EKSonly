  resource "aws_instance" "cts" {
    ami = "ami-083654bd07b5da81d" #general ubuntu 20.04 in us-east-1
    instance_type = var.instance_type
    key_name = var.key_name
    vpc_security_group_ids = [aws_security_group.reinvent_sg.id]
    subnet_id = aws_subnet.cts_subnet.id
    associate_public_ip_address = true
    tags = local.common_tags
    depends_on = [aws_internet_gateway.igw]
  }
  