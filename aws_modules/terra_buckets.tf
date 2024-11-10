resource "aws_s3_bucket" "terra-s3-bucket" {
    bucket = "${var.env}-shreyas-terraform-bucket"
    tags = {
        Name = "${var.env}-my-terraform-bucket"
        environment = var.env
    }
}