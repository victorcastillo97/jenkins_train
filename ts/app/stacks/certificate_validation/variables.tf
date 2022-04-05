variable "certificate_arn" {
    description = "The ARN of the certificate that is being validated"
    type = string
    default = null
}

variable "validation_record_fqdns" {
    description = "Lista de FQDN que implementan la validación"
    type = list
    default = null
}