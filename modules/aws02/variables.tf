variable "vpc" {
  description = "instance type name"
  type = string
  default = "vpc01"
}

variable "instance_type" {
  description = "instance type t2.micro"
  type = string
  default = "t2.micro"
}

variable "ami" {
  description = "ami"
  type = string
  default = "ami-01e444924a2233b07"
}

variable "subnet_id" {
  description = "subnet_id"
  type = string
  default = "subnet-00e39a3f15e5c70f7"
}

variable "tag" {
  description = "tag"
  type = string
  default = "vm01"
}
