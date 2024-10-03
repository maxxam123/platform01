#resource "aws_instance" "vm01" {
#  ami = var.ami
#  instance_type = var.instance_type
#  subnet_id = var.subnet_id
#  tags = {
#    Name = var.tag
#  }
#}

resource "aws_iam_user" "demouser" {
      name = var.tag
}
