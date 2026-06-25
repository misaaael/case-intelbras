variable "aws_region" {
  type    = string
  default = "us-east-1"
}

variable "project_name" {
  type    = string
  default = "case-intelbras"
}

variable "container_port" {
  type    = number
  default = 8000
}

variable "django_secret_key" {
  type      = string
  sensitive = true
}

variable "intelbras_base_url" {
  description = "URL base da API Intelbras"
  type        = string
}
