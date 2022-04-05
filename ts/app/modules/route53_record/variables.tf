variable "zone_id" {
    description = "The ID of the hosted zone to contain this record."
    type = string
    default = null
}
variable "record_name" {
    description = "The name of the record"
    type = string
    default = null
}
variable "record_type" {
    description = "The record type"
    type = string
    default = null
}
variable "record_ttl" {
    description = "The TTL of the record"
    type = number
    default = null
}

variable "records" {
    description = "A string list of records"
    type = list
    default = null
}