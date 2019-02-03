resource "aws_lb_target_group" "this" {
  name_prefix = "${var.env}"
  port        = "${var.port}"
  protocol    = "HTTP"
  vpc_id      = "${var.vpc_id}"
  target_type = "${var.target_type}"

  health_check {
    path = "${var.health_check_path}"
  }

  lifecycle {
    create_before_destroy = true
  }
}

resource "aws_lb_listener_rule" "this" {
  listener_arn = "${var.listener_arn}"

  action {
    type             = "forward"
    target_group_arn = "${aws_lb_target_group.this.arn}"
  }

  condition {
    field  = "host-header"
    values = ["${var.host}.${var.domain}"]
  }
}

resource "aws_route53_record" "this" {
  name    = "${var.host}.${var.domain}"
  type    = "A"
  zone_id = "${var.route53_zone_id}"

  alias {
    name                   = "${var.lb_dns_name}"
    zone_id                = "${var.lb_zone_id}"
    evaluate_target_health = false
  }
}
