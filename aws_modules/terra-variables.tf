variable "env" {
    description = "This is the environment we will be working with"
    type = string
}

variable "ami_id" {
    description = "This is the AMI ID for ec2 instances"
    type = string
}

variable "instance_type" {
    description = "This is the type of ec2 instances"
    type = string
}

variable "instance_count" {
    description = "This is the number of ec2 instances"
    type = string
}