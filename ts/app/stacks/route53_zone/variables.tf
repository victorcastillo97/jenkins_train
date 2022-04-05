variable "route53_zone" {
  description = "The Hosted Zone name of the desired Hosted Zone"
  type = string
  default = null
}
variable "private_zone" {
    description = "Used with name field to get a private Hosted Zone"
    type = bool
    default = true
}