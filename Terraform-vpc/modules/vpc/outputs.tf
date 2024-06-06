output "vpc_id" {
  description = "VPC ID"
  value       = aws_vpc.my_vpc.id
}


output "subnet_id" {
  value       = aws_subnet.subnets.*.id
  description = "Subnet IDS"
}
