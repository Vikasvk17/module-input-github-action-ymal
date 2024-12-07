
resource "aws_instance" "ec2_instance" {
  ami           = var.ami
  instance_type = var.instance_type

  tags = {
    Name = var.instance_name
  }
}

output "ec2_instance_id" {
  value = aws_instance.ec2_instance.id
}