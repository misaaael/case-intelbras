output "ecr_repository_url" {
  value = aws_ecr_repository.backend.repository_url
}

output "alb_url" {
  value = "http://${aws_lb.main.dns_name}"
}
output "github_actions_backend_role_arn" {
  description = "ARN da role usada pelo GitHub Actions do backend"
  value       = aws_iam_role.github_actions_backend.arn
}

output "frontend_bucket_name" {
  description = "Bucket S3 do frontend"
  value       = aws_s3_bucket.frontend.bucket
}

output "frontend_cloudfront_distribution_id" {
  description = "ID da distribuição CloudFront do frontend"
  value       = aws_cloudfront_distribution.frontend.id
}

output "frontend_cloudfront_url" {
  description = "URL pública do frontend via CloudFront"
  value       = "https://${aws_cloudfront_distribution.frontend.domain_name}"
}

output "github_actions_frontend_role_arn" {
  description = "ARN da role usada pelo GitHub Actions do frontend"
  value       = aws_iam_role.github_actions_frontend.arn
}
