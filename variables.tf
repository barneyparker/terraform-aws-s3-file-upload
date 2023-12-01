variable "bucket_id" {
  type        = string
  description = "The Id of the S3 bucket to upload files to"
}

variable "source_dir" {
  type        = string
  description = "The directory containing the files to upload"
}
