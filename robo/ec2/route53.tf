resource "aws_route53_record" "component" {
  name                = "${var.COMPONENT}-dev.robotshop.internal"
  zone_id             = "Z037286228DFYMBZCZ58K"
  allow_overwrite     = true
  type                = "A"
  ttl                 = 60
  records             = [aws_spot_instance_request.cheap-worker.private_ip]
}