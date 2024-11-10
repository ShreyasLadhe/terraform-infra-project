resource "aws_s3_bucket" "terra-s3-bucket" {
    bucket = "shreyas-terraform-bucket"
    tags = {
        Name = "my-terraform-bucket"
    }
}