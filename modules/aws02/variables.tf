variable "vpc" {
  description = "instance type name"
  type = string
  default = "vpc01"
}

variable "eks" {
  description = "instance type t2.micro"
  type = string
  default = "eks01"
}

variable "application" {
  description = "ami"
  type = string
  default = "common"
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
