output "lb_dns_name" {
  description = "The DNS name of the load balancer"
  value       = aws_lb.main.dns_name
}

output "aws_ecr_repository" {
  description = "The URL of the ECR"
  value       = aws_ecr_repository.app-repository.repository_url
}

output "back_dns_name" {
  description = "The DNS name of the backend load balancer"
  value       = aws_lb.back.dns_name
}

