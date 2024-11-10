variable "dynamodb_table_name" {
  type        = string
  default     = "terraform-dynamodb-table"
  description = "This is my table of dynamodb made using terraform."
}

variable "ec2-ami_id" {
    type = string
    default = "ami-0866a3c8686eaeeba"
}

variable "ec2-inst_type" {
    default = "t2.micro"
    type = string
}