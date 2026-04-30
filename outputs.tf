cat > outputs.tf << 'EOF'
output "bucket_nombre" {
  value = aws_s3_bucket.mi_bucket.id
}

output "tabla_nombre" {
  value = aws_dynamodb_table.mi_tabla.name
}
EOF
