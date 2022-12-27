# SSH

resource "aws_security_group" "vpc_ssh"{
    name = "vpc-ssh"
    description = "VPC SSH"

    ingress {
        description = "Allow port 22 inbound"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        description = "Allow all ips and ports outbound"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "vpc-ssh"
    }
}

# Web

resource "aws_security_group" "vpc_web"{
    name = "vpc-web"
    description = "VPC Web"

    ingress {
        description = "Allow port 80 inbound"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        description = "Allow all ips and ports outbound"
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }

    tags = {
        Name = "vpc-web"
    }
}