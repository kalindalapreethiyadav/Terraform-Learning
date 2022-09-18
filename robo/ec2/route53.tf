resource "aws_route53_record" "component" {
  zone_id             = "Z037286228DFYMBZCZ58K"
  name                = "${var.COMPONENT}-dev.robotshop.internal"
  type                = "A"
  ttl                 = 60
  records             = [aws_spot_instance_request.cheap-worker.private_ip]
}