data "aws_vpc" "existing_vpc" {
    filter {
        name = "tag:name"
        values = ["default"]
    }
}