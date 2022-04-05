variable "domain_name" {
    description = "A domain name for which the certificate should be issued"
    type = string
    default = null
}

variable "validation_method" {
    description = "Which method to use for validation. DNS or EMAIL are valid."
    type = string
    default = "DNS"
}

variable "certificate_tags" {
    description = "A map of tags to assign to the resource"
    type = map
    default = null
}

variable "certificate_create_before_destroy" {
    description = "Block to replace a certificate which is currently in use"
    type = bool
    default = true
}
