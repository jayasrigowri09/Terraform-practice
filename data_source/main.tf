
resource "aws_security_group" "ec2_security_group" {
    name = "terraform-sg"
    vpc_id = "$(data.aws_vpc.existing_vpc.id)"
    description = "create instance using existing vpc(using datasource)"

    ingress {
        description = "custom security group"
        from_port = 80
        to_port = 80
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
        description = "custom security group"
        from_port = 22
        to_port = 22
        protocol = "tcp"
        cidr_blocks = ["0.0.0.0/0"]
    }
    
    tags = {
        Name ="terraform_sg"
    }
}
resource "aws_instnce" "myec2" {
    instance_type = var.ec2_instance_type
    ami = var.ec2_ami
    key_pair = 
    vpc_security_group_ids = ["$(aws_security_group.ec2_security_group.id)"]
    tags = {
        name = "name"
        value = "terraform-instance"
    }
}