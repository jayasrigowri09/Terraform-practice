variable "ec2_ami" {
    type = string
    description = "ami to use when launching the instance"
}
variable "ec2_instance_type" {
    type = string
    description = "instance type to use when launching the instacne"
}
variable "key_pair" {
    type = "string"
    description = "instance to use key_pair when launching the instacne"
}