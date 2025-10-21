resource "aws_instance" "main" {
  ami                    = data.aws_ami.DevopsPrac.id
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.allow-all-ports.id]
  tags = var.tags
}

resource "aws_security_group" "allow-all-ports" {
  name        = "allow-all-ports"
  description = "Allow all inbound and outbound traffic"

  ingress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name = "allow-all-ports"
  }
}