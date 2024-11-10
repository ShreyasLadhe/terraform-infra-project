resource "aws_dynamodb_table" "my-dynamodb-table" {
    name = "${var.env}-terraform-dynamodb-table"
    billing_mode = "PAY_PER_REQUEST"
    hash_key = "ID"
    attribute {
        name = "ID"
        type = "S"
    }
    tags = {
        Name = "${var.env}- terraform-dynamodb-table"
    }
}