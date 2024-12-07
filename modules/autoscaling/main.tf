
resource "aws_autoscaling_group" "asg" {
  launch_configuration = aws_launch_configuration.lc.id
  min_size             = var.min_size
  max_size             = var.max_size
  vpc_zone_identifier  = var.subnet_ids

  tags = [
    {
      key                 = "Name"
      value               = var.asg_name
      propagate_at_launch = true
    }
  ]
}

resource "aws_launch_configuration" "lc" {
  name          = "${var.asg_name}-lc"
  image_id      = var.ami
  instance_type = var.instance_type
}

