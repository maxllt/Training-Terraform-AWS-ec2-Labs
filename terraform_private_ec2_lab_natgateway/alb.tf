#Create the ALB
resource "aws_lb" "alb_test" {
  name               = "albtest"
  internal           = false
  load_balancer_type = "application"
  subnets            = [aws_subnet.subnet_public_test.id, aws_subnet.subnet_public_test_2.id]
  security_groups    = [aws_security_group.sg_alb_test.id]


  enable_deletion_protection = false
}

# Create the target group of the ALB
resource "aws_lb_target_group" "tg_test" { // Target Group A
  name     = "target-instance"
  port     = 80
  protocol = "HTTP"
  vpc_id = aws_vpc.vpc_test.id

  health_check {
    path                = "/"
    port                = 80
    protocol            = "HTTP"
    interval            = 30
    timeout             = 10
    healthy_threshold   = 3
    unhealthy_threshold = 3
  }

}

# Create the attachement for the target group
resource "aws_lb_target_group_attachment" "tg_attachment_test" {
 target_group_arn = aws_lb_target_group.tg_test.arn
 target_id        = aws_instance.instance_test.id
 port             = 80
}


resource "aws_lb_listener" "alb_listener_test" {
 load_balancer_arn = aws_lb.alb_test.arn
 port              = "${var.server_port}"
 protocol          = "HTTP"

 default_action {
   type             = "forward"
   target_group_arn = aws_lb_target_group.tg_test.arn
 }
}

