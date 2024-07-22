output "count_public_ip" {
  # splat
  value = aws_instance.instance_count[*].public_ip
}
