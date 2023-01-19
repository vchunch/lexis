output "EC2_PUBLIC_IP" {
  value = aws_instance.lexis_nexis.public_ip
}
