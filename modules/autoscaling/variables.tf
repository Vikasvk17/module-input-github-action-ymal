
variable "ami" {
  description = "AMI ID for the launch configuration"
  type        = string
}

variable "instance_type" {
  description = "Instance type for the launch configuration"
  type        = string
}

variable "asg_name" {
  description = "Name of the Auto Scaling Group"
  type        = string
}

variable "min_size" {
  description = "Minimum size of the Auto Scaling Group"
  type        = number
}

variable "max_size" {
  description = "Maximum size of the Auto Scaling Group"
  type        = number
}

variable "subnet_ids" {
  description = "Subnets for the Auto Scaling Group"
  type        = list(string)
}
