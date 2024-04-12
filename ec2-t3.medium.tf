provider "aws" {
  region = "ap-south-1"  # Replace with your desired AWS region
}

resource "aws_instance" "my_instance" {
  count         = 3
  ami           = "ami-007020fd9c84e18c7"  # Replace with your desired AMI ID
  instance_type = "t3.medium"
  key_name      = "jenkins_2"  # Replace with your key pair name

  vpc_security_group_ids = ["sg-09842fefaab0d5e50"]  # Replace with your security group ID(s)

  subnet_id = "subnet-0fc24d3949e171bcf"  # Replace with your public subnet ID

  associate_public_ip_address = true

  tags = {
    Name = "MyEC2Instance-${count.index + 1}"
  }
}
