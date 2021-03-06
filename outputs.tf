output "ecs_cluster_name" {
  value = "${aws_ecs_cluster.default.name}"
}

output "aws_alb_dns_name" {
  value = "${aws_alb.default.dns_name}"
}

output "aws_alb_listener_arn" {
  value = "${aws_alb_listener.default.arn}"
}

output "aws_alb_arn" {
  value = "${aws_alb.default.arn}"
}