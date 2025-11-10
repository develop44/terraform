
locals {
  env = terraform.workspace
}



# --- Définition des subnets publics ---
/*
locals {
  public_subnets = {
    subnet_a = {
      cidr = "10.0.1.0/24"
      az   = "eu-west-3a"
    }
    subnet_b = {
      cidr = "10.0.2.0/24"
      az   = "eu-west-3b"
    }
  }
}
*/

