
output "vpc_id" {
  value = module.vpc.vpc_id
}

output "bucket_name" {
  value = module.s3.bucket_name
}

output "ec2_instance_id" {
  value = module.ec2.ec2_instance_id
}

output "autoscaling_group_id" {
  value = module.autoscaling.autoscaling_group_id
}
