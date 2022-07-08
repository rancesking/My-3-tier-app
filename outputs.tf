output "lb_dns_name" {
  description = "The DNS name of the load balancer"
  value       = aws_lb.main.dns_name
}

output "back_dns_name" {
  description = "The DNS name of the backend load balancer"
  value       = aws_lb.back.dns_name
}

output "DB_endpoint" {
  description = "The DNS name of the backend load balancer"
  value       = aws_db_instance.default.endpoint
}

