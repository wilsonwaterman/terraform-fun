resource "aws_vpc" "dev-vpc" {
    cidr_block = "10.0.0.0/16"
    enable_classiclink = "false"
    instance_tenancy = "default"

    tags = {
        Name = "dev-vpc"
    }
}

resource "aws_subnet" "dev-subnet-public-1" {
    vpc_id = aws_vpc.dev-vpc.id
    cidr_block = "10.0.1.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "us-west-2a"

    tags = {
        Name = "dev-subnet-public-1"
    }
}

resource "aws_subnet" "dev-subnet-public-2" {
    vpc_id = aws_vpc.dev-vpc.id
    cidr_block = "10.0.2.0/24"
    map_public_ip_on_launch = "true"
    availability_zone = "us-west-2b"

    tags = {
        Name = "dev-subnet-public-2"
    }
}

resource "aws_subnet" "dev-subnet-private-1" {
    vpc_id = aws_vpc.dev-vpc.id
    cidr_block = "10.0.3.0/24"
    availability_zone = "us-west-2a"

    tags = {
        Name = "dev-subnet-private-1"
    }
}

resource "aws_subnet" "dev-subnet-private-2" {
    vpc_id = aws_vpc.dev-vpc.id
    cidr_block = "10.0.4.0/24"
    availability_zone = "us-west-2b"

    tags = {
        Name = "dev-subnet-private-2"
    }
}
