# Create EC2 Instance
resource "aws_instance" "web" {
  ami               = "ami-022e1a32d3f742bd8" # Amazon Linux
  instance_type     = "t2.micro"
  availability_zone = "us-east-1a"
  #availability_zone = "us-east-1b"
  tags = {
    "Name" = "web-2"
  }
  lifecycle {
    create_before_destroy = true
  }
}
