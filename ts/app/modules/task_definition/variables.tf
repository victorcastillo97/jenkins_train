variable "task_definition" {
    description = "Name for task definition"
    type  = string
    default = null
}

variable "network_mode" {
    description = "mode network"
    type        = string
    default = "bridge"
}

variable "container_definitions" {
    description = "Parameters for definition of container"
    type = any
}