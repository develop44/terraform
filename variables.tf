
/*variable "EC2_name" {
  description = "Nom"
  type        = string
  default     = "nes"


  validation {
    condition     = length(var.EC2_name) >= 3
    error_message = "La variable 'env' doit contenir au min 3 caractères."
  }
}*/
/*
variable "environment" {
  description = "Type d'environnement (dev ou prod)"
  type        = string
  default     = "dev"
}
*/
/*
variable "vpc_id" {
  description = "ID du VPC"
  type        = string
}
*/
/*
variable "ingress_rules" {
  type = list(object({
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = [
    { from_port = 22, to_port = 22, protocol = "tcp", cidr_blocks = ["0.0.0.0/0"] },
    { from_port = 80, to_port = 80, protocol = "tcp", cidr_blocks = ["0.0.0.0/0"] },
    { from_port = 443, to_port = 443, protocol = "tcp", cidr_blocks = ["0.0.0.0/0"] }
  ]
}
*/
