# Terraform AWS S3 File Upload

This is a simple Terraform module that uploads files to and S3 bucket and sets their MIME types automatically

## Usage

```hcl
# Create an S3 bucket
resource "aws_s3_bucket" "bucket" {}

# Upload a directory of files to the bucket

module "s3_file_upload" {
  source = "github.com/barneyparker/terraform-aws-s3-file-upload"

  bucket_id = aws_s3_bucket.bucket.id
  source_dir = "${path.module}/files"
}
```

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| bucket\_id | The Id of the S3 bucket to upload files to | `string` | n/a | yes |
| source\_dir | The directory containing the files to upload | `string` | n/a | yes |

## Outputs

None