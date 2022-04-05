module "route53_record" {
    source      = "../../modules/route53_record"
    zone_id = var.zone_id
    name    = var.record_name
    type    = var.record_type
    ttl     = var.record_ttl
    records = var.records
}
