# AWS Region
variable "aws_region" {
    description = "Region to create resources in"
    type = string
    default = "us-east-1"
}

# AWS EC2 Instance Type
variable "instance_type" {
    description = "EC2 instance type"
    type = string
    default = "t2.micro"
    sensitive = false
}

variable "instance_keypair" {
    description = "AWS EC2 keypair associated with an EC2 instance"
    type = string
    default = "terraform-key"
    

  
}