provider "aws" {
    profile         = "default"
    region          = var.region
}

resource "aws_instance" "example" {
    ami             = "ami-085925f297f89fce1"
    instance_type   = "t2.micro"
}

resource "aws_eip" "ip" {
    vpc             = true
    instance        = aws_instance.example.id
}

resource "aws_instance" "another_one" {
    ami             = "ami-085925f297f89fce1"
    instance_type   = "t2.micro"
}
