resource "random_integer" "random" {
  min = 1
  max = 50000
}

resource "aws_s3_bucket" "example" {
  bucket = "terraform-backend-${random_integer.random.result}"

}

data "aws_iam_policy_document" "instance_assume_role_policy" {
    statement {
        actions = ["s3:ListBucket"]
        principals {
            type        = "Service"
            identifiers = ["ec2.amazonaws.com"]
        }
        resources = [ aws_s3_bucket.main.arn ]
    }
}