resource "aws_instance" "demo" {
  ami           = var.ami1
  instance_type = "t2.micro"

  tags = {
    Name = "Demo training"
  }
}



# Optional resource
resource "aws_ebs_volume" "volume" {
  count = var.check_status ? 1:0
  availability_zone = "us-east-1a"
  size              = var.demo_size

  tags = {
    Name = "HelloWorld"
  }
}