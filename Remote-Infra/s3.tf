resource "aws_s3_bucket" "remote_s3" {
  bucket = "remote-state-bucket"

  tags = {
    Name        = "remote-state-bucket"
  }
}
