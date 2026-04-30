cat > variables.tf << 'EOF'
variable "ambiente" {
  description = "Ambiente de despliegue"
  type        = string
  default     = "desarrollo"
}
EOF
