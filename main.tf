cat > main.tf << 'EOF'
# Bucket S3
resource "aws_s3_bucket" "mi_bucket" {
  bucket = "mi-bucket-${formatdate("YYYYMMDDHHmmss", timestamp())}"
}

resource "aws_s3_bucket_versioning" "versionado" {
  bucket = aws_s3_bucket.mi_bucket.id
  versioning_configuration {
    status = "Enabled"
  }
}

# Tabla DynamoDB
resource "aws_dynamodb_table" "mi_tabla" {
  name         = "Usuarios"
  billing_mode = "PAY_PER_REQUEST"
  hash_key     = "id"

  attribute {
    name = "id"
    type = "S"
  }
}
EOF
