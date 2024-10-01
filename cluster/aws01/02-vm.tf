resource "aws_instance" "master01" {
  ami = ""
  instance_type = "t2.micro"
  subnet_id = "subnet-00e39a3f15e5c70f7"
  tags = {
    Name = "master01"
  }
}
resource "aws_instance" "master02" {
  ami = ""
  instance_type = "t2.micro"
  subnet_id = "subnet-00e39a3f15e5c70f7"
  tags = {
    Name = "master02"
  }
}
resource "aws_instance" "master03" {
  ami = ""
  instance_type = "t2.micro"
  subnet_id = "subnet-00e39a3f15e5c70f7"
  tags = {
    Name = "master03"
  }
}
resource "aws_instance" "worker01" {
  ami = ""
  instance_type = "t2.micro"
  subnet_id = "subnet-00e39a3f15e5c70f7"
  tags = {
    Name = "worker01"
  }
}
