resource "aws_instance" "my-ec2-instance" {
    count = var.instance_count
    ami = var.ami_id
    instance_type = var.instance_type
    tags = {
        Name = "${var.env}-terra-ec2-instance"
    }
} 