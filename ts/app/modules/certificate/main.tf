resource "aws_acm_certificate" "cert" {
  domain_name       = var.domain_name
  validation_method = var.validation_method

  tags = var.certificate_tags

  lifecycle {
    create_before_destroy = var.certificate_create_before_destroy
  }
}