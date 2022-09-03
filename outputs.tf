output "vpc_id" {
  value       = join("", aws_vpc.main.*.id)
  description = "The ID of the VPC"
}

output "vpc_arn" {
  value       = join("", aws_vpc.main.*.arn)
  description = "The ARN of the VPC"
}

output "vpc_cidr_block" {
  value       = join("", aws_vpc.main.*.cidr_block)
  description = "The primary IPv4 CIDR block of the VPC"
}

output "igw_id" {
  value       = aws_internet_gateway.igw.id
  description = "IGW ID"
}
