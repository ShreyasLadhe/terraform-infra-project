module "dev-app" {
    source = "./aws_modules"
    env = "dev"
    instance_type = "t2.micro"
    ami_id = "ami-0866a3c8686eaeeba"
    instance_count = 1
}

module "stagging-app" {
    source = "./aws_modules"
    env = "stagging"
    instance_type = "t2.medium"
    ami_id = "ami-0866a3c8686eaeeba"
    instance_count = 1
}

module "prod-app" {
    source = "./aws_modules"
    env = "prod"
    instance_type = "t2.large"
    ami_id = "ami-0866a3c8686eaeeba"
    instance_count = 3
}