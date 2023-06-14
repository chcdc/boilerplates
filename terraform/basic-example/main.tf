resource "aws_instance" "app_server" {
  ami           = "ami-04473c3d3be6a927f"
  instance_type = var.ec2_instance_type

  tags = {
    Name = var.instance_name
  }
}
