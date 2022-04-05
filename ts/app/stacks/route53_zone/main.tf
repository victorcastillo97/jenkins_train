data "aws_route53_zone" "selected" {
  name         = var.route53_zone
  private_zone = var.private_zone
}