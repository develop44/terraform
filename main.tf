data "aws_ami" "ubuntu_2204" {
  most_recent = true
  owners      = ["099720109477"]

  filter {
    name   = "name"
    values = ["ubuntu/images/hvm-ssd/ubuntu-jammy-22.04-amd64-server-*"]
  }
}

module "ec2_nesrine" {
  source        = "./modules/ec2"
  ami_id        = data.aws_ami.ubuntu_2204.id
  instance_type = "t2.micro"
  key_name      = "nesrine5"
  instance_name = "nesrine"
  env           = "dev"
}
module "ec2_karim" {
  source        = "./modules/ec2"
  ami_id        = data.aws_ami.ubuntu_2204.id
  instance_type = "t2.micro"
  key_name      = "nesrine5"
  instance_name = "nesrine"
  env           = "dev"
}


/*
  provisioner "remote-exec" {
    inline = [
      "sudo apt update -y",
      "sudo apt install nginx -y",
      "sudo systemctl start nginx",
      "sudo systemctl enable nginx"
    ]


  connection {
  type        = "ssh"
  user        = "ubuntu"
  private_key = file("C:/Users/Nesrine Belghith/Desktop/nesrine5.pem")
  host        = self.public_ip
}

  }
}


output "EC2_public_ip" {
  value = aws_instance.EC2_nesrine.public_ip
}*/

/*
resource "aws_instance" "example" {
  ami           = "data.aws_ami.ubuntu_2204.id"   
  instance_type = var.environment == "prod" ? "t3.small" : "t3.micro"

  tags = {
    Name = "example-${var.environment}"
  }
}


/*
resource "aws_vpc" "main" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "simple-vpc"
  }
}

# --- Output ---
output "vpc_id" {
  description = "ID du VPC"
  value       = aws_vpc.main.id
}

resource "aws_subnet" "public" {
  for_each = local.public_subnets

  vpc_id                  = var.vpc_id
  cidr_block              = each.value.cidr
  availability_zone       = each.value.az
  map_public_ip_on_launch = true

  tags = {
    Name = "public-${each.key}"
  }
}


resource "aws_security_group" "example" {
  name        = "example-sg"
  description = "Example security group"

  dynamic "ingress" {
    for_each = var.ingress_rules
    content {
      from_port   = ingress.value.from_port
      to_port     = ingress.value.to_port
      protocol    = ingress.value.protocol
      cidr_blocks = ingress.value.cidr_blocks
    }
  }
}
*/