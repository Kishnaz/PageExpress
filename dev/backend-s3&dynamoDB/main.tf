provider "aws" {
  region = "ap-south-1"
  profile = "desktop-sdlc-preprod"
}



resource "aws_s3_bucket" "bucket" {
  bucket = "a205915-pageexpress-tfstatebackup"
  versioning {
    enabled = true
  }
  
  # prevents accidental deletion
  lifecycle{
    prevent_destroy = false
  }

  # We should do versioning also for the terraform state files for disaster recovery
}



resource "aws_dynamodb_table" "my-tf-locks" {
  name           = "a205915-tf-state-locks"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

}



