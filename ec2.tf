resource "aws_key_pair" "ec2-key-pair" {
    key_name = "terraform-key"
    public_key = file("/home/damage_control-9000/Desktop/terra-proj-1/terra-test-key.pub")
}

resource "aws_default_vpc" "test-vpc" {

}

resource "aws_security_group" "terraform-security" {
    name = "allow ports for access"
    description = "This security group allows port access to my ec2."
    vpc_id = aws_default_vpc.test-vpc.id

    ingress{
        from_port = 22
        to_port = 22
        protocol = "tcp"
        description = "This allows SSH traffic to flow."
        cidr_blocks = ["0.0.0.0/0"]
    }

    egress {
        description = " This allows all outgoing traffic for any port."
        from_port = 0
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
    }
}

resource "aws_instance" "my-ec2-instance" {
    ami = var.ec2-ami_id
    instance_type = var.ec2-inst_type
    key_name = aws_key_pair.ec2-key-pair.key_name
    security_groups = [aws_security_group.terraform-security.name]
    tags = {
        Name = "terra-ec2-instance"
    }
}