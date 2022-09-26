resource "aws_route53_record" "component" {
  zone_id = "Z01343381V1UMF97WRJWR"
  name    = "${var.COMPONENT}-dev.roboshop.internal"
  type    = "A"
  ttl     = 60
  records = [aws_spot_instance_request.cheap_worker.private_ip]
}