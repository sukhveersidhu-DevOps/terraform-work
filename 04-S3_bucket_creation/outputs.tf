output "bucket_domain_name" {
    value = aws_s3_bucket.test-bucket.bucket_domain_name
    description = "FQDN of bucket"
}

output "bucket_id" {
    value = aws_s3_bucket.test-bucket.id
    description = "Bucket Name (aka ID)"
  
}

output "bucket_arn" {
    value = aws_s3_bucket.test-bucket.arn
    description = "Bucker ARN" 
}