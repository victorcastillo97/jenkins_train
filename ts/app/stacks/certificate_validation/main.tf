module "certificate_validation" {
    source      = "../../modules/certificate_validation"
    certificate_arn         = var.certificate_arn
    validation_record_fqdns = var.validation_record_fqdns
}