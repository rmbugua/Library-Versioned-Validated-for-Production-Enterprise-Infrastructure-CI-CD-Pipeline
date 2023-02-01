resource "aws_launch_configuration" "as_conf" {
  name_prefix   = "terraform-lc-example-"
  image_id      = "${data.aws_ami.amazon-linux-2.id}"
  instance_type = "t2.micro"

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_autoscaling_group" "as_conf" {
  name                 = "terraform-asg-example-1"
  availability_zones    = ["us-east-1a"]
  health_check_type     = "EC2"
  launch_configuration = "${aws_launch_configuration.as_conf.name}"
  min_size             = 1
  max_size             = 2

  lifecycle {
    create_before_destroy = true
  }
}

