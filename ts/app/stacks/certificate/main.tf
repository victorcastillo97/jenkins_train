module "certificate" {
    source      = "../../modules/certificate"
    domain_name       = var.domain_name
    validation_method = var.validation_method
    tags = var.certificate_tags
    certificate_create_before_destroy = var.certificate_create_before_destroy

}