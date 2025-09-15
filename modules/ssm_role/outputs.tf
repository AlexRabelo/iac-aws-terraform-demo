# outputs.tf - Outputs do modulo SSM Role

output "iam_instance_profile_name" {
  description = "Nome do instance profile para EC2"
  value       = aws_iam_instance_profile.ssm_profile.name
}
