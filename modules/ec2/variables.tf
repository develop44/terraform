variable "ami_id" {}
variable "instance_type" {
  default = "t2.micro"
}
variable "key_name" {}
variable "instance_name" {}
variable "env" {
  default = "dev"
}
