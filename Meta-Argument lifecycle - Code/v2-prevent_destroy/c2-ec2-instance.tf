# Create EC2 Instance
resource "aws_instance" "web" {
  ami           = "ami-022e1a32d3f742bd8" # Amazon Linux
  instance_type = "t2.micro"
  tags = {
    "Name" = "web-2"
  }
  lifecycle {
    prevent_destroy = false # Default is false
  }
}

